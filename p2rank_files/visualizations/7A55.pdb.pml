
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
        
        load "data/7A55.pdb", protein
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
 
        load "data/7A55.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1539,2788,2790,2845,2865,2867,2868,2772,1568,2771,1447,1448,1267,1545,1547,1268,1270,1287,1427,1311,1310,1260,1542,1549,1551,1552,1558,1559,1562,1563,1564,1286,3261,3263,277,278,273,279,280,285,287,263,270,503,527,1442,3265,3269,3274,3257,3260,1440,1441,283,526,501,498,454,1538,2866,2778,1528,3251] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4206,488,489,4228,4050,4067,4207,4066,4343,3315,3285,3313,3287,3067,3316,3319,3057,3061,3054,3063,3070,479,480,4083,4090,4205,3238,3221,3222,3344,4079,4080,3072,481,485,486,490,478] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3035,3705,4079,3733,3072,3073,3091,3092,3093,3041,4090,4204,4205,4078,4106,4197,4198,4199,4200,3220,3221,3222,3653,3654,4067,4207,3674,3675,3683,3039,3038,3671,3672,3678,4107,3676,3677,3649,3651,3658,3205] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [873,874,871,727,868,869,421,878,1421,437,438,1420,307,308,309,257,255,251,252,253,287,289,263,1424,1310,1417,1419,1298,1418,1326,898,903,1327,1427,925,922] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [552,4293,517,550,4294,4327,4291,543,4288,4289,576,4271,4274,551,3304,518,519,520,521,4232,4226,4042,3302,3303,3305,3336,3334,4239,4240,4266,4267,4236,1490,3306,3311,3307,4228,4227] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [463,505,461,504,65,67,69,68,77,79,3264,2856,3247,3057,3058,3061,3062,3055,2855,2857] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [773,774,775,4304,544,4290,4296,4300,537,539,540,541,4292,566,567,4279,603,512,841,842,4312,4314,4320] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [4352,470,471,486,4344,4348,4360,4361,4363,4365,488,4342,4355] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [4083,4362,4364,4623,4065,4066,4375,4376,4082,3720,3722,4578,3724] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1459,1682,1683,3273,1460,1246,1464,1523,1501,1503,1485,1486,1489,3305,1488,1490,1487] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        