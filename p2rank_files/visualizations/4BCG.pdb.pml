
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
        
        load "data/4BCG.pdb", protein
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
 
        load "data/4BCG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [711,206,313,149,151,204,205,729,731,733,737,714,327,328,713,329,330,173,174,147,175,709,712,734,1145,766,1146,764,1122,763,1221,1222,1223,1230,1130,1229,584,738,508,583] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3562,3564,3567,3565,3542,3541,407,411,412,415,408,3589,417,362,383,3595,3596,3629,661,662,663,664,665,666,669,674,343,360,361,673,359] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4269,4251,4094,4096,4097,4339,4340,4115,4157,4122,4124,4180,4177,4169,4173,4239] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [3692,3696,3695,4033,3680,3690,4034,2590,2591,2592,4012,2568,2572,3989,2574,3002,3041,3042,2535,2543,3668,3987,3990] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2505,2525,2522,1181,1182,1153,1154,790,2530,756,758,1158,1165] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1529,1544,2305,2318,1548,1914,1923,1930,1931,1526,1527,1528,1966,1967,1968,2312,2311,1488,1489] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [475,696,443,328,329,330,180,183,187,341,345,346,448,334,347,351,354,1242,1243,1244,426] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [2864,2865,2866,2867,3927,3928,4532,4534,4504,4505,4506,3950,3951,3952,2841,3897,3899,3918,3920] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [3330,3355,3524,3525,3526,3181,3153,3385,3394,3363,3365,3396,3420,3357,3159,3163,3522,3334] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3968,3973,3974,2620,4008,2741,2766,2777,2771,2775,2776,2770,2647,2648,2645] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3071,3075,2677,2678,2601,2603,2636,2637,2635,2661,3083,46,2640,34,2560] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        