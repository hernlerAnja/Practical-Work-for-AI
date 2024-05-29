
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/7DU8.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/7DU8.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [170,157,169,196,772,776,1201,1232,777,210,150,151,152,154,156,745,769,742,736,738,194,377,494,195,197,199,200,212,358,360,361,365,470,1231,1316,1317,211,345,720,188,190,1328,1330,1332,1179,1494,1495,463,1354,1355,1497,1499,460,431,464,1346,433,435,1204,1205,1516,1515,2810,1215,2589,2591,189,191,192,2846,2838,2847,1496,3746,2577,2578,2580] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [2588,2594,2595,2596,2597,2598,2612,2776,2788,2881,2771,2904,2769,2770,2879,2550,2556,2557,2558,2610,2611,177,181,2587,2589,2590,2591,2592,189,191,2846,435,436,3744,399,3764,3743,3765,2869,2871,2872,2874,2875,3670,3746,3748,3693,2842,2843,2844,2870,3187,3586,3587,3663,2551,2772,3131,3135,2552,2554,2555,2756,3585,3180,3153,3156,3559,3560,3556,3570,3668,3669,3671,3534] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [2390,2393,2395,2398,2400,2402,2417,2915,2948,2916,2454,3052,2420,2426,2438,2440,2450,2419,2457,2442] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        