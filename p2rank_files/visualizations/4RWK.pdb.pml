
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
        
        load "data/4RWK.pdb", protein
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
 
        load "data/4RWK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1297,1298,1305,1552,1553,1526,1527,1533,1534,1528,821,1320,1321,802,220,222,223,219,224,225,226,231,218,1540,858,819,820,823,830,1275,1569,265,774,776,1397,1398,1402,1403,1404,1405,549,583,412,1427,234,428,227,250,264,266,427,658,659,781,799] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2610,2615,3538,3175,3178,3185,3174,2590,2592,3157,2587,2593,2594,2588,2597,2600,3508,3162,3130,2765,3129,3136,2766,3154,3607,3610,3012,3014,3537,2781,2905,2906,2907,2941,3131,3132,2778,2774,2633,2634,2635,3611,2884] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1272,1260,1689,1691,1264,1482,1670,1427,1511,1568,1569,1486,1608,1273,1275,1528] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2245,2249,2231,2233,2228,2234,1207,1208,1178,1180,1707,1232,1704,1739,1715,1716] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [948,959,963,964,941,953,2041,2046,1863,1866,1844,1846,2035,1809,1841,1843,912,1860,1868] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [4007,4009,4090,4125,4137,3871,3904,4277,4278,3874,4274,4276] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        