
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
        
        load "data/5HBH.pdb", protein
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
 
        load "data/5HBH.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [450,547,1373,1379,284,285,250,253,1245,1253,1380,245,550,578,809,810,811,307,448,808,305,306,248,1372,1244,1269,1268,894,895,863,2731,806,433,805,815,832,826,835,2729,2730,828,280,281,283,256,282] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [4140,4141,4137,2834,2838,2839,4139,4138,4175,2840,2854,2855,2857,2867,2869,4088,4093,4096,4104,4107,4099,4101,4450,4173,4174,4148,4149,4150,4186,4455,4448,4451,4456,4458,2833] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1447,1471,1483,878,880,883,1472,1231,1770,1772,911,867,873,908,1698,918,875,917,1484,1239,950,1742,1448] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3534,3546,3548,17,4987,4989,4990,3848,3850,3533,4974,4970,4978,4950,4927,4946,4947,4948,4953,3840,3859,3894,16,4997,3895] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [2981,3155,3156,3157,3158,3161,3115,4386,4384,4763,4764,4761,4786,4759,4787,4825,4826,4827,4381,4393,4394,4423,3014,3041,3013,2980,3189,4372] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [2015,1513,1514,2440,2441,1993,2012,1590,1571,2449,2434,2037,2039,2036,2048,1570,1547,1550] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3422,4415,3452,3454,3149,3453,3424,3420,3414,3416,3217,3503,3427,3179,3176,3177,3183,3185,3186,3187,3178,3147,3148,3181,3190] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [280,281,276,279,274,1400,518,519,1405,1408,466,467,450,1402,1403,1376,1377,1378,1380,549,1216] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1981,1982,2424,2425,1932,1984,1928,1929,2209,2213,2384,2387,2385,2408,2414,2420,2382,2418,2419,1936,1949] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1714,2341,2555,2585,993,995,2296,2326,2327,2297,991,992,994,2557,1025,2601,2590] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [3470,3060,3485,3490,3487,3518,3511,60,55,58,87,49,3479,89,3494] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [678,192,800,348,349,427,350,351,369,675,684,686,191,179,181] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        