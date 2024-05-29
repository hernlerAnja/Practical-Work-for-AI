
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
        
        load "data/4I21.pdb", protein
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
 
        load "data/4I21.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [134,731,735,186,140,141,143,162,165,1225,1227,4735,759,736,1100,1101,1102,1103,1105,1114,4724,4726,1078,184,185,136,138,704,728,1130,701,705,687,1129,338,339,1209,1210,322,680,699,149,150,153,158,4721,4733,144] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2658,2521,2522,2674,2675,3071,3436,3438,3466,3439,2470,2476,2477,2478,2520,2480,2479,2481,2485,3441,3450,3561,3563,2501,3414,3576,3413,2486,2499,2498,3577,3545,3465,3546,3016,2474,2472,3067,3041,3040,3064,3035,3037] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [412,414,415,440,447,1258,1257,1351,164,166,356,1239,1068,1330,1346,1343,1347,1242,1378,371,388,449,1361,1364,1367,1368,1359,372,373] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [2502,3703,3714,3700,3695,2689,2724,2693,2707,2708,2709,2692,2783,2785,3568,3569,3575,3578,3593,3404,3594,3683,3687,2751,2746,2776,2504,2500] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3233,3232,3269,3231,2893,3259,3291] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        