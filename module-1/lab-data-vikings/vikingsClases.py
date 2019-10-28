
# Soldier

class Soldier:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength
    def attack(self):
        return self.strength
    def receiveDamage(self, damage):
        self.health = self.health - int(damage)



# Viking


class Viking(Soldier):
    def __init__(self, name, health, strength):
        Soldier.__init__(self, health,strength)
        self.name = name
        self.health=health
        self.strength=strength
    def attack(self):
        return Soldier.attack(self)
    def receiveDamage(self, dam):
        puntosrecibidos = dam
        self.health = self.health - int(puntosrecibidos)
        if self.health > 0:
            print(self.name + ' has receive {} points of damage'.format(puntosrecibidos))
        else:
            print(self.name + ' has died in combat')
    def battleCry(self):
        return "Odin Owns You All!"
    pass





# Saxon


class Saxon(Soldier):
    def __init__(self, health, strength):
        Soldier.__init__(self, health,strength)
        self.health=health
        self.strength=strength
    def receiveDamage(self, dam):
        puntosrecibidos = dam
        self.health = self.health - int(puntosrecibidos)
        if self.health > 0:
            print('Saxon has receive {} points of damage'.format(puntosrecibidos))
        else:
            print('Saxon has died in combat')
    pass


# War


class War:
    pass
