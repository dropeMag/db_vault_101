from random import randint, choice

d_insert = open('insert_random_data.txt', mode='w', encoding='utf-8')

lst_rooms = list()
lst_used_names = list()
lst_dwellers = list()
lst_explorers = list()
lst_babies = list()
lst_outfits = dict()
lst_weapons = dict()
lst_pets = dict()
lst_junks = dict()


class Dweller:
    d_names = open('all_dwellers_names.txt', mode='r', encoding='utf-8')
    lst_all_dwellers_names = list()

    for x in d_names:
        lst_all_dwellers_names.append(x[:-1])

    d_names.close()

    id_dweller = 0

    def __init__(self, dweller_type):
        Dweller.id_dweller += 1

        in_dweller = choice(Dweller.lst_all_dwellers_names)

        while in_dweller in lst_used_names:
            in_dweller = choice(Dweller.lst_all_dwellers_names)

        lst_used_names.append(in_dweller)

        self.id = Dweller.id_dweller
        self.name = in_dweller
        self.gender = choice(['m', 'f'])
        self.decease = 0

        if dweller_type == 'adult':
            self.level = randint(1, 10)
            self.room = Dweller.dweller_job()

            if self.room == 2:
                lst_explorers.append(self)

        elif dweller_type == 'baby':
            while True:
                id_mom = choice(lst_dwellers)
                if id_mom.gender == 'f' and id_mom.decease == 0:
                    self.mom = id_mom.id
                    break

            while True:
                id_dad = choice(lst_dwellers)
                if id_dad.gender == 'm' and id_dad.decease == 0:
                    self.dad = id_dad.id
                    break

        self.str = randint(1, 3)
        self.per = randint(1, 3)
        self.end = randint(1, 3)
        self.cha = randint(1, 3)
        self.int = randint(1, 3)
        self.agi = randint(1, 3)
        self.luc = randint(1, 3)

    @staticmethod
    def dweller_job():
        end_loop = False
        while not end_loop:
            rd_room = randint(1, 75)

            if rd_room == 1:
                if lst_rooms.count(rd_room) < 2:
                    lst_rooms.append(rd_room)
                    return rd_room
                else:
                    end_loop = False

            elif rd_room == 2:
                return rd_room

            elif rd_room in range(5, 75, 3):
                if lst_rooms.count(rd_room) < 4:
                    lst_rooms.append(rd_room)
                    return rd_room
                else:
                    end_loop = False

            else:
                if lst_rooms.count(rd_room) < 6:
                    lst_rooms.append(rd_room)
                    return rd_room
                else:
                    end_loop = False


class Room:
    def __init__(self):
        in_floor = 1
        for rms in range(75):
            if rms == 0:
                in_size = 2
                in_type = 1
            elif rms == 1:
                in_size = 2
                in_type = 9
            elif rms == 2:
                in_size = 3
                in_type = 21
            elif rms == 3:
                in_size = 3
                in_type = 10
            elif rms in range(1, 76, 3):
                in_size = 2
                in_type = 6
            else:
                in_size = 3
                rd_type = randint(2, 25)
                while rd_type in [6, 9, 10, 21]:
                    rd_type = randint(2, 25)
                in_type = rd_type

            if rms in range(3, 76, 3):
                in_floor += 1

            d_insert.write(f'CALL sp_insert_room({in_size}, {in_floor}, {in_type});\n')


class Outfit:
    arq_outfit = open('all_outfits.txt', mode='r', encoding='utf-8')

    lst_all_outfits_names = list()
    for otft in arq_outfit:
        lst_all_outfits_names.append(otft)

    arq_outfit.close()

    def __init__(self):
        in_outfit = choice(Outfit.lst_all_outfits_names)
        in_outfit = in_outfit.split(',')

        self.name = in_outfit[0]
        self.str = in_outfit[1]
        self.per = in_outfit[2]
        self.end = in_outfit[3]
        self.cha = in_outfit[4]
        self.int = in_outfit[5]
        self.agi = in_outfit[6]
        _ = in_outfit[7]
        self.luc = _[:-1]


class Weapon:
    arq_weapon = open('all_weapons.txt', mode='r', encoding='utf-8')

    lst_all_weapons_names = list()
    for wepn in arq_weapon:
        lst_all_weapons_names.append(wepn)

    arq_weapon.close()

    def __init__(self):
        in_weapon = choice(Weapon.lst_all_weapons_names)
        in_weapon = in_weapon.split(';')

        self.name = in_weapon[0]
        _ = in_weapon[1]
        self.damage = _[:-1]


class Pet:
    arq_pet = open('all_pets.txt', mode='r', encoding='utf-8')

    lst_all_pets_names = list()
    for pet in arq_pet:
        lst_all_pets_names.append(pet)

    arq_pet.close()

    def __init__(self):
        in_pet = choice(Pet.lst_all_pets_names)
        in_pet = in_pet.split(',')

        self.name = in_pet[0]
        _ = in_pet[1]
        self.description = _[:-1]


class Junk:
    arq_junk = open('all_junks.txt', mode='r', encoding='utf-8')

    lst_all_junks_names = list()
    for jnk in arq_junk:
        lst_all_junks_names.append(jnk)

    arq_junk.close()

    def __init__(self):
        in_junk = choice(Junk.lst_all_junks_names)

        _ = in_junk
        self.name = _[:-1]


class Exploration:
    id_exploration = 0

    def __init__(self, dweller_explorer):
        Exploration.id_exploration += 1

        self.id = Exploration.id_exploration
        self.dweller_explorer = dweller_explorer

        rd_duration = randint(1440, 5760)
        rd_date = f'2022-{mes+1}-{randint(1, 28)}'

        sp = f'CALL sp_insert_exploration("{dwllr_exploration.name}", {rd_duration}, "{rd_date}");\n'
        d_insert.write(sp)

        Exploration.products_per_exploration(self.id)
        Exploration.decease_per_exploration(self.dweller_explorer)

    @staticmethod
    def products_per_exploration(exploration_id):
        qnt_pdct_expr = randint(5, 10)
        lst_pdct_expr = []
        for product in range(qnt_pdct_expr):
            category_exploration = choice([lst_outfits, lst_weapons, lst_junks])
            product_exploration = choice(list(category_exploration.keys()))

            while product_exploration in lst_pdct_expr:
                product_exploration = choice(list(category_exploration.keys()))

            lst_pdct_expr.append(product_exploration)
            category_exploration[product_exploration] += 1

            sp = f'CALL sp_insert_storage_exploration({exploration_id}, "{product_exploration}", 1);\n'
            d_insert.write(sp)

    @staticmethod
    def decease_per_exploration(dweller_explorer):
        exploration_decease = randint(1, 10)

        if exploration_decease <= 4:
            dweller_explorer.decease = 1
            # lst_explorers.remove(dweller_explorer)
            clean_deceased_from_vault()
            rd_incident = randint(3, 8)

            sp = f'CALL sp_insert_dweller_decease("{dweller_explorer.id}", "w", {rd_incident}, 0);\n'
            d_insert.write(sp)


class Quest:
    id_quest = 0

    def __init__(self):
        Quest.id_quest += 1

        self.id = Quest.id_quest
        lst_dweller_selected = []

        dweller_per_quest = randint(1, 3)
        for dwllr in range(dweller_per_quest):
            dweller_in_quest = choice(lst_explorers)

            if (len(lst_explorers) == 1) and (dwllr != 0):
                break
            elif (len(lst_explorers) == 2) and (dwllr == 2):
                break

            while (dweller_in_quest.id in lst_dweller_selected) or dweller_in_quest.decease:
                dweller_in_quest = choice(lst_explorers)

            lst_dweller_selected.append(dweller_in_quest.id)

            if dwllr == 2:
                self.dweller_3_obj = dweller_in_quest
                self.dweller_3_id = dweller_in_quest.id
                continue
            else:
                self.dweller_3_obj = 'NULL'
                self.dweller_3_id = 'NULL'

            if dwllr == 1:
                self.dweller_2_obj = dweller_in_quest
                self.dweller_2_id = dweller_in_quest.id
                continue
            else:
                self.dweller_2_obj = 'NULL'
                self.dweller_2_id = 'NULL'

            if dwllr == 0:
                self.dweller_1_obj = dweller_in_quest
                self.dweller_1_id = dweller_in_quest.id
            else:
                self.dweller_1_obj = 'NULL'
                self.dweller_1_id = 'NULL'

        rd_date = f'2022-{mes + 1}-{randint(1, 28)}'

        sp = f'CALL sp_insert_quest("teste", "{rd_date}", {self.dweller_1_id}, {self.dweller_2_id}, {self.dweller_3_id});\n'
        d_insert.write(sp)

        Quest.products_per_quest(self.id)
        Quest.decease_per_quest(self.dweller_1_obj)
        Quest.decease_per_quest(self.dweller_2_obj)
        Quest.decease_per_quest(self.dweller_3_obj)

    @staticmethod
    def products_per_quest(quest_id):
        qnt_pdct_qest = randint(5, 10)
        lst_pdct_qest = []
        for product in range(qnt_pdct_qest):
            category_quest = choice([lst_outfits, lst_weapons, lst_junks])
            product_quest = choice(list(category_quest.keys()))

            while product_quest in lst_pdct_qest:
                product_quest = choice(list(category_quest.keys()))

            lst_pdct_qest.append(product_quest)
            category_quest[product_quest] += 1

            sp = f'CALL sp_insert_storage_quest({quest_id}, "{product_quest}", 1);\n'
            d_insert.write(sp)


    @staticmethod
    def decease_per_quest(dweller_id):
        quest_decease = randint(1, 10)

        if quest_decease <= 3 and dweller_id != 'NULL':
            dweller_id.decease = 1
            # lst_explorers.remove(dweller_id)
            clean_deceased_from_vault()
            rd_incident = randint(3, 8)

            sp = f'CALL sp_insert_dweller_decease("{dweller_id.id}", "q", {rd_incident}, 0);\n'
            d_insert.write(sp)


class Sale:
    def __init__(self):
        category_sale = choice([lst_outfits, lst_weapons, lst_pets, lst_junks])
        product_sale, product_qnt = choice(list(category_sale.items()))

        self.storage = False

        if product_qnt > 0:
            quantity_sold = randint(1, product_qnt)
            category_sale.update({f"{product_sale}": product_qnt - quantity_sold})

            self.product = product_sale
            self.quantity = quantity_sold
            self.profit = randint(5, 15)
            self.storage = True


class Scrap:
    id_scrap = 0

    def __init__(self):
        category_scrap = choice([lst_outfits, lst_weapons, lst_junks])
        product_scrap, product_qnt = choice(list(category_scrap.items()))

        self.storage = False

        if product_qnt > 0:
            Scrap.id_scrap += 1

            quantity_scraped = randint(1, product_qnt)
            category_scrap.update({product_scrap: product_qnt - quantity_scraped})

            self.id = Scrap.id_scrap
            self.product = product_scrap
            self.quantity = quantity_scraped
            self.storage = True

            sp = f'CALL sp_insert_scrap("{self.product}", {self.quantity}, "{rd_date}");\n'
            d_insert.write(sp)

            Scrap.products_per_scrap(self.id)

    @staticmethod
    def products_per_scrap(scrap_id):
        qnt_pdct_scrp = randint(0, 3)
        lst_pdct_scrp = []

        for product in range(qnt_pdct_scrp):
            quantity_scraped = randint(1, 2)
            product_scrap, product_qnt = choice(list(lst_junks.items()))

            while product_scrap in lst_pdct_scrp:
                product_scrap, product_qnt = choice(list(lst_junks.items()))

            lst_pdct_scrp.append(product_scrap)
            lst_junks.update({product_scrap: product_qnt + quantity_scraped})

            sp = f'CALL sp_insert_storage_scrap({scrap_id}, "{product_scrap}", {quantity_scraped});\n'
            d_insert.write(sp)


def clean_deceased_from_vault():
    for dweller in lst_explorers:
        if dweller.decease:
            lst_explorers.remove(dweller)
            lst_dwellers.remove(dweller)


for mes in range(12):
    d_insert.write(f'--{f"MONTH {mes + 1:02}":^20}\n')

    if mes == 0:
        Room()

    qnt_dweller = randint(30, 50)
    for dwlr in range(qnt_dweller):
        dweller_adult = Dweller('adult')
        lst_dwellers.append(dweller_adult)

        sp = f'CALL sp_insert_dweller("{dweller_adult.name}", "{dweller_adult.gender}", {dweller_adult.level}, {dweller_adult.room}, {dweller_adult.str}, {dweller_adult.per}, {dweller_adult.end}, {dweller_adult.cha}, {dweller_adult.int}, {dweller_adult.agi}, {dweller_adult.luc});\n'
        d_insert.write(sp)

    qnt_baby = randint(15, 35)
    for baby in range(qnt_baby):
        dweller_baby = Dweller('baby')
        lst_babies.append(dweller_baby)

        sp = f'CALL sp_insert_baby("{dweller_baby.name}", "{dweller_baby.gender}", {dweller_baby.mom}, {dweller_baby.dad}, {dweller_baby.str}, {dweller_baby.per}, {dweller_baby.end}, {dweller_baby.cha}, {dweller_baby.int}, {dweller_baby.agi}, {dweller_baby.luc});\n'
        d_insert.write(sp)

        if mes > 0:
            for grown in range(len(lst_babies) - qnt_baby):
                dweller_grown = lst_babies[0]
                dweller_grown.level = 1
                dweller_grown.room = Dweller.dweller_job()
                lst_babies.remove(dweller_grown)
                lst_dwellers.append(dweller_grown)

                sp = f'CALL sp_update_dweller_status("{dweller_grown.id}", 1, NULL);\n'
                d_insert.write(sp)

    qnt_decease = randint(5, 15)
    for decease in range(qnt_decease):
        dweller_deceased = choice(lst_dwellers)

        while dweller_deceased.decease:
            dweller_deceased = choice(lst_dwellers)

        dweller_deceased.decease = 1
        # lst_dwellers.remove(dweller_deceased)
        clean_deceased_from_vault()

        rd_incident = randint(1, 8)

        sp = f'CALL sp_insert_dweller_decease("{dweller_deceased.id}", "v", {rd_incident}, 1);\n'
        d_insert.write(sp)

    qnt_incident = randint(30, 60)
    for incident in range(qnt_incident):
        rd_incident = randint(1, 8)
        rd_room = randint(2, 75)
        rd_date = f'2022-{mes+1}-{randint(1, 28)}'

        sp = f'CALL sp_insert_incident("{rd_date}", {rd_incident}, {rd_room});\n'
        d_insert.write(sp)

    qnt_product = randint(20, 40)
    for outfit in range(qnt_product):
        product_outfit = Outfit()

        if product_outfit.name in lst_outfits.keys():
            lst_outfits[product_outfit.name] += 1
        else:
            lst_outfits.update({product_outfit.name: 1})

        sp = f'CALL sp_insert_outfit("{product_outfit.name}", 1, {product_outfit.str}, {product_outfit.per}, {product_outfit.end}, {product_outfit.cha}, {product_outfit.int}, {product_outfit.agi}, {product_outfit.luc});\n'
        d_insert.write(sp)

    for weapon in range(qnt_product):
        product_weapon = Weapon()

        if product_weapon.name in lst_weapons.keys():
            lst_weapons[product_weapon.name] += 1
        else:
            lst_weapons.update({product_weapon.name: 1})

        sp = f'CALL sp_insert_weapon("{product_weapon.name}", "{product_weapon.damage}", 1);\n'
        d_insert.write(sp)

    for pet in range(qnt_product):
        product_pet = Pet()

        if product_pet.name in lst_pets.keys():
            lst_pets[product_pet.name] += 1
        else:
            lst_pets.update({product_pet.name: 1})

        sp = f'CALL sp_insert_pet("{product_pet.name}", "{product_pet.description}", 1);\n'
        d_insert.write(sp)

    for junk in range(qnt_product):
        product_junk = Junk()

        if product_junk.name in lst_junks.keys():
            lst_junks[product_junk.name] += 1
        else:
            lst_junks.update({product_junk.name: 1})

        sp = f'CALL sp_insert_junk("{product_junk.name}", 1);\n'
        d_insert.write(sp)

    for dwllr_exploration in lst_explorers:
        if not dwllr_exploration.decease:
            dweller_exploration = Exploration(dwllr_exploration)

    qnt_quest = randint(10, 30)
    for dwllr_quest in range(qnt_quest):
        if len(lst_explorers) > 0:
            Quest()
        else:
            break

    qnt_sale = randint(125, 145)
    for sale in range(qnt_sale):
        product_sale = Sale()

        if product_sale.storage:
            rd_date = f'2022-{mes + 1}-{randint(1, 28)}'

            sp = f'CALL sp_insert_sale("{product_sale.product}", {product_sale.quantity}, {product_sale.profit}, "{rd_date}");\n'
            d_insert.write(sp)

    qnt_scrap = randint(80, 120)
    for scrap in range(qnt_scrap):
        Scrap()

    d_insert.write(f'CALL sp_insert_diary({randint(300, 7000)}, {randint(10, 100)}, {randint(10, 100)}, {randint(10, 100)});\n')
    d_insert.write('\n')

d_insert.close()
