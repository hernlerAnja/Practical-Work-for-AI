
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
        
        load "data/2C47.pdb", protein
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
 
        load "data/2C47.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4819,4821,4777,4782,4787,4792,8258,8636,8637,8638,8614,8617,8618,8268,8672,8640,8264,8256,8651,8652,8653,4773,4784,4772,4771,8269,8270,8273,8276,8263,8277,8553,8565,8573,8643,4911,5184,5185,4805,5164,5167,5174,8613,5178,5168,4899] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [7959,7551,7958,8067,7546,7391,7392,7522,7589,7538,7526,7173,7540,7543,7927,8068,8065,7330,7043,7065,7068,7067,7188,7189,7190,7521,7044,7045,7047,8075] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [89,90,576,994,195,1112,428,1109,1111,556,557,562,1113,365,363,2357,2358,579,73,574,69,87,210,211,212,319,1119,995,587,963] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1652,2420,2422,1643,1646,1651,1653,1655,1631,1336,1724,1725,1765,2424,2423,1658,1337,1338,1341,1344,1345,1650,1699,2468,2430,1734,1736,1324,1737,1738,2425,2428,2429,2417,1330,1331] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [7038,6344,6345,7077,7039,7034,7029,7031,7033,7025,5964,5963,6266,6250,6262,6270,6271,6274,6277,5951,5955,6357,6358,6385,5945,5950,5956,5957,5960,5949,5943,6318] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2948,3363,2943,2434,2438,2456,2458,2459,3344,3480,3485,3486,3487,3477,3479,2795,3481,3482,2686,2724,2726,2926,2574,2575,2573,2945,2794,2558,2931,3364,2956,2947] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [5220,5733,5735,4812,4892,5736,5101,5102,5225,5245,4906,5742,5743,5741,4797,4800,4813,5237,5239,5242,5243,5649,5618,5650,5250,4796,4998,5039,5737,5206,5221] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3700,3710,3713,3714,3701,3705,53,4095,4000,4135,4020,4021,4024,58,63,99,65,62,55,4019,4015,3693,4108] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5622,5623,5964,5280,5345,5346,6190,7031,7032,7033,7037,6188,6225,6269,5277,9248,9255,5342,5343,5344,5950,5976] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2983,2986,3336,61,62,55,56,57,2355,3700,3713,3714,53,58,3938,3940,4019,3052,3051,3337,3335] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [683,617,1571,1345,1357,1358,682,1569,1650,2420,2422,1646,1651,2424,4725,4732,4739,966,967,1331,968,2428] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [8289,8290,8277,7579,7581,7931,7932,8263,4786,7647,8572,4784] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2335,2297,2299,2336,1072,1022,1056,1068,1000,1051,2337,1002,2317,2306,2309,2310,2311,2294] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [5682,5697,5657,5661,6905,6907,5695,5669,5672,5673,5674,6902,6925,6914,6918,6942] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [4713,3391,3431,3440,3441,4683,4687,4694,3371,4674,4676,3426,4671] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [4775,4778,4783,4784,4785,4829,8593,8576,8592,8574] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        