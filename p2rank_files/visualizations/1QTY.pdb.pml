
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
        
        load "data/1QTY.pdb", protein
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
 
        load "data/1QTY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [427,954,1105,955,956,1099,1100,390,392,453,395,397,403,402,411,413,414,449,452,441,435,938] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [185,202,263,204,205,1190,1198,1191,1195,1196,1197,328,329,334,1166,184,186,183,1176,296,280,1182,300,297,301,304] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1966,2609,2640,2638,2641,2613,2576,2617,2518,2593,2603,2610,2607,2512,2513,2514,2515,2517,1969,2497,2498,2499] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [4188,4189,4205,4171,4422,4170,4404,400,742,730,738,726,734,735,741,4392,4395,4402,4405,4407,438] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1726,1727,1728,1870,1742,1743,1744,1745,1746,1747,1842,1871,2726,2748,2739,3083,2740,1839,2732,1838,2737,1836,1822] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1727,1870,1876,1871,2705,2708,1877,2703,2702,2700,1709,1721] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [2272,2280,2276,2277,2279,2284,1657,2283,5915,1980,1656,5688,5689,5940,5924,5925,5926,5920,5923,5723] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3643,3646,3636,3411,3633,3663,1171,1209,3410,884,885,886,3438,3437,3446,3436,3669,1509,1512,1513,1210,1501,1505,1497] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [4964,4930,4929,4948,3048,3049,3050,5165,5166,5161,5163,5164,3055,2428,3051,2427,5156,3054,3043,3047] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [1969,2498,2311,2312,1983,1986,1991,2480,2496,2647,1932,2642,1934,1937,1939,1945,1943,1977,2648] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [4978,5034,5022,5023,5002,3372,3469,5177,5146,5147,5166,5168,5164,3468,5024,3476,3473] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1168,1172,1185,1206,1212,1184,1224,1220,1541,329,334,1166,1161,1163,1182] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3406,3413,822,3679,3399,858,3419,3414,3417,3692,3693,3694,3793,3709,3777] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [86,87,4178,51,4438,4451,4452,4552,4453,4173,4176,4157,4468,4536,4538,4158,4165,4166,4172] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [5211,5311,5227,5297,4917,4931,4932,4935,5197,2400,4937,2364,5210,5212,5312] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [917,1151,1155,168,164,167,151,922,158,163,933,934,170,1158] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        