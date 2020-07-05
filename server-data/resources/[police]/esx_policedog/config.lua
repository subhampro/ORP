-- TriggerEvent('esx_policedog:openMenu') to open menu

Config = {
    Job = {'police', 'sheriff'},
    Command = 'policedog', -- set to false if you dont want to have a command
    Model = 351016938,
    TpDistance = 50.0,
    Sit = {
        dict = 'creatures@rottweiler@amb@world_dog_sitting@base',
        anim = 'base'
    },
    Drugs = {'bagofdope', 'coke_pooch', 'meth_pooch', 'crack_pooch'}, -- add all drugs here for the dog to detect
}

Strings = {
    ['not_police'] = 'You are ~r~not ~s~ an officer!',
    ['menu_title'] = 'Police dog',
    ['take_out_remove'] = 'Take it out / Put in the',
    ['deleted_dog'] = 'Send the dog back',
    ['spawned_dog'] = 'Call the dog',
    ['sit_stand'] = 'Dont move stay here!',
    ['no_dog'] = "You don't have a dog",
    ['dog_dead'] = 'Your dog is dead',
    ['search_drugs'] = 'The dog searches around him',
    ['no_drugs'] = 'No drugs to find.', 
    ['drugs_found'] = 'Woof woof! drug!',
    ['dog_too_far'] = 'The dog is far too far!',
    ['attack_closest'] = 'Attack nearby player'
}