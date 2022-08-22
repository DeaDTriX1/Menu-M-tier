
-- CONFIGURATION DES JOB !

ConfigJob = {
    JobNameMenu1 = "PoliceNational",
    JobNameMenu2 = "ambulance",
    JobNameMenu3 = "Douane",
    JobNameMenu4 = "brinks",
    JobNameMenu5 = "ambulance",
}

-- POLICE NATIONAL :

PoliceNational = {
    clothes = {
        specials = {


            [0] = {
                label = "Reprendre sa tenue civil",
                
                variations = {male = {}, female = {}},
                onEquip = function()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                        TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                    SetPedArmour(PlayerPedId(), 0)
                end
            },


            [1] = {
                label = "Tenue PAM",
                
                variations = {
                    male = {
                        ['tshirt_1'] = 25,  ['tshirt_2'] = 0,
                        ['torso_1'] = 16,   ['torso_2'] = 0,
                        ['decals_1'] = 15,   ['decals_2'] = 0,
                        ['arms'] = 0,
                        ['pants_1'] = 19,   ['pants_2'] = 0,
                        ['shoes_1'] = 108,   ['shoes_2'] = 0,
                        ['helmet_1'] = 193,  ['helmet_2'] = 0,
                        ['chain_1'] = 23,    ['chain_2'] = 0,
                        ['mask_1'] = 0,     ['mask_2'] = 0,
                        ['ears_1'] = -1,     ['ears_2'] = 0,
                        ['bproof_1'] = 47,     ['bproof_2'] = 0
                    },
                        female = {
                        tshirt_1 = 35,  tshirt_2 = 0,
                        torso_1 = 48,   torso_2 = 0,
                        decals_1 = 7,   decals_2 = 2,
                        arms = 44,
                        pants_1 = 34,   pants_2 = 0,
                        shoes_1 = 27,   shoes_2 = 0,
                        helmet_1 = -1,  helmet_2 = 0,
                        chain_1 = 0,    chain_2 = 0,
                        ears_1 = 2,     ears_2 = 0
                    }
                },
                onEquip = function()  
                end
            }
        }
    }
}


-- POMPIER



PompierTenu = {
    clothes = {
        specials = {


            [0] = {
                label = "Reprendre sa tenue civil",
                
                variations = {male = {}, female = {}},
                onEquip = function()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                        TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                    SetPedArmour(PlayerPedId(), 0)
                end
            },


            [1] = {
                label = "Tenue PAM",
                
                variations = {
                    male = {
                        ['tshirt_1'] = 25,  ['tshirt_2'] = 0,
                        ['torso_1'] = 16,   ['torso_2'] = 0,
                        ['decals_1'] = 15,   ['decals_2'] = 0,
                        ['arms'] = 0,
                        ['pants_1'] = 19,   ['pants_2'] = 0,
                        ['shoes_1'] = 108,   ['shoes_2'] = 0,
                        ['helmet_1'] = 193,  ['helmet_2'] = 0,
                        ['chain_1'] = 23,    ['chain_2'] = 0,
                        ['mask_1'] = 0,     ['mask_2'] = 0,
                        ['ears_1'] = -1,     ['ears_2'] = 0,
                        ['bproof_1'] = 47,     ['bproof_2'] = 0
                    },
                        female = {
                        tshirt_1 = 35,  tshirt_2 = 0,
                        torso_1 = 48,   torso_2 = 0,
                        decals_1 = 7,   decals_2 = 2,
                        arms = 44,
                        pants_1 = 34,   pants_2 = 0,
                        shoes_1 = 27,   shoes_2 = 0,
                        helmet_1 = -1,  helmet_2 = 0,
                        chain_1 = 0,    chain_2 = 0,
                        ears_1 = 2,     ears_2 = 0
                    }
                },
                onEquip = function()  
                end
            },


        }
    }
}



-- Douane


DouaneTenu = {
    clothes = {
        specials = {


            [0] = {
                label = "Reprendre sa tenue civil",
                
                variations = {male = {}, female = {}},
                onEquip = function()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                        TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                    SetPedArmour(PlayerPedId(), 0)
                end
            },


            [1] = {
                label = "Tenue PAM",
                
                variations = {
                    male = {
                        ['tshirt_1'] = 25,  ['tshirt_2'] = 0,
                        ['torso_1'] = 16,   ['torso_2'] = 0,
                        ['decals_1'] = 15,   ['decals_2'] = 0,
                        ['arms'] = 0,
                        ['pants_1'] = 19,   ['pants_2'] = 0,
                        ['shoes_1'] = 108,   ['shoes_2'] = 0,
                        ['helmet_1'] = 193,  ['helmet_2'] = 0,
                        ['chain_1'] = 23,    ['chain_2'] = 0,
                        ['mask_1'] = 0,     ['mask_2'] = 0,
                        ['ears_1'] = -1,     ['ears_2'] = 0,
                        ['bproof_1'] = 47,     ['bproof_2'] = 0
                    },
                        female = {
                        tshirt_1 = 35,  tshirt_2 = 0,
                        torso_1 = 48,   torso_2 = 0,
                        decals_1 = 7,   decals_2 = 2,
                        arms = 44,
                        pants_1 = 34,   pants_2 = 0,
                        shoes_1 = 27,   shoes_2 = 0,
                        helmet_1 = -1,  helmet_2 = 0,
                        chain_1 = 0,    chain_2 = 0,
                        ears_1 = 2,     ears_2 = 0
                    }
                },
                onEquip = function()  
                end
            },


        }
    }
}



-- Brinks


BrinksTenu = {
    clothes = {
        specials = {


            [0] = {
                label = "Reprendre sa tenue civil",
                
                variations = {male = {}, female = {}},
                onEquip = function()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                        TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                    SetPedArmour(PlayerPedId(), 0)
                end
            },


            [1] = {
                label = "Tenue PAM",
                
                variations = {
                    male = {
                        ['tshirt_1'] = 25,  ['tshirt_2'] = 0,
                        ['torso_1'] = 16,   ['torso_2'] = 0,
                        ['decals_1'] = 15,   ['decals_2'] = 0,
                        ['arms'] = 0,
                        ['pants_1'] = 19,   ['pants_2'] = 0,
                        ['shoes_1'] = 108,   ['shoes_2'] = 0,
                        ['helmet_1'] = 193,  ['helmet_2'] = 0,
                        ['chain_1'] = 23,    ['chain_2'] = 0,
                        ['mask_1'] = 0,     ['mask_2'] = 0,
                        ['ears_1'] = -1,     ['ears_2'] = 0,
                        ['bproof_1'] = 47,     ['bproof_2'] = 0
                    },
                        female = {
                        tshirt_1 = 35,  tshirt_2 = 0,
                        torso_1 = 48,   torso_2 = 0,
                        decals_1 = 7,   decals_2 = 2,
                        arms = 44,
                        pants_1 = 34,   pants_2 = 0,
                        shoes_1 = 27,   shoes_2 = 0,
                        helmet_1 = -1,  helmet_2 = 0,
                        chain_1 = 0,    chain_2 = 0,
                        ears_1 = 2,     ears_2 = 0
                    }
                },
                onEquip = function()  
                end
            },


        }
    }
}



-- Ambulance


AmbulanceTenu = {
    clothes = {
        specials = {
            [0] = {
                label = "Reprendre sa tenue civil",
                
                variations = {male = {}, female = {}},
                onEquip = function()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                        TriggerEvent('skinchanger:loadSkin', skin)
                    end)
                    SetPedArmour(PlayerPedId(), 0)
                end
            },

            [1] = {
                label = "Tenue PAM",
                
                variations = {
                    male = {
                        ['tshirt_1'] = 25,  ['tshirt_2'] = 0,
                        ['torso_1'] = 16,   ['torso_2'] = 0,
                        ['decals_1'] = 15,   ['decals_2'] = 0,
                        ['arms'] = 0,
                        ['pants_1'] = 19,   ['pants_2'] = 0,
                        ['shoes_1'] = 108,   ['shoes_2'] = 0,
                        ['helmet_1'] = 193,  ['helmet_2'] = 0,
                        ['chain_1'] = 23,    ['chain_2'] = 0,
                        ['mask_1'] = 0,     ['mask_2'] = 0,
                        ['ears_1'] = -1,     ['ears_2'] = 0,
                        ['bproof_1'] = 47,     ['bproof_2'] = 0
                    },
                        female = {
                        tshirt_1 = 35,  tshirt_2 = 0,
                        torso_1 = 48,   torso_2 = 0,
                        decals_1 = 7,   decals_2 = 2,
                        arms = 44,
                        pants_1 = 34,   pants_2 = 0,
                        shoes_1 = 27,   shoes_2 = 0,
                        helmet_1 = -1,  helmet_2 = 0,
                        chain_1 = 0,    chain_2 = 0,
                        ears_1 = 2,     ears_2 = 0
                    }
                },
                onEquip = function()  
                end
            },


        }
    }
}