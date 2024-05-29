
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
        
        load "data/4G6L.pdb", protein
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
 
        load "data/4G6L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1380,558,663,1251,1373,1378,1379,818,819,1371,1372,313,315,314,1243,253,255,902,2748,2749,1401,1383,1268,871,662,664,1267,823,840,843,816,441,1244,456,291,258,259,261,557,458,293] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2814,4116,2817,4085,2818,2819,4077,2832,2847,2833,2835,2848,2850,4074,4426,4427,4082,4152,4126,4127,4128,4164,4433,4434,4435,4436,4437,4438,4439] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1488,1490,1500,1502,1239,1716,956,886,1240,888,1233,924,925,1228,1230,958,1760] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3525,3526,3757,3826,3828,3506,3510,3512,3511,25,4975,4952,4948,4949,4956,4925,3872,3873,3477,4926,4924,3818,3837,4929] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4063,4066,4089,3321,3322,3323,3324,3629,3353,2793,2794,2795,2797,3628,3617,2798,2802,2801,4061,4062] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3647,3649,1445,3645,547,3635,3638,1205,2784,1168,1170,1179,1185,1593,2798,2802,1161,2790,2795,2783,2781] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1489,1488,1490,1498,1500,886,888,1232,1230,1467,1486,1487,1485,1478,1482,1483,1468] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [3430,3431,3432,3127,3402,3392,3394,3195,3481,3155,3161,3156,3125,3168,3165] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2030,2031,2033,2467,2452,1531,1532,2458,2459,2011,2054,2066,2067,1568,1569,2057,2055,2029,1606,1607,1608,1583] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [359,434,683,357,358,435,398,694,695,696,187,189,199,200,186,808] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4844,4809,4812,4814,4815,4817,4840,4856,3212,3213,4864,4860,4862,4863,4355] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1975,1976,1978,1979,1984,1964,1969,2170,2041,2040,2093,2121,2122] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        