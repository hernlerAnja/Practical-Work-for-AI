
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
        
        load "data/4IB5.pdb", protein
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
 
        load "data/4IB5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4969,4995,4996,4997,5001,4974,4998,4999,5000,1987,2473,5172,2462,2471,5165,5133,5170,5171,5131,5134,5135,5136,5092,1989,2474,2476,2478,2480,1964,2466,2467,2463,5009,2423,2147,2148,2149,2158,2122,2146,2424,2127,1993,2126,4973,1991,2016] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [3253,3420,3811,3251,3315,3316,3419,3254,3831,3815,3656,4220,4221,4320,4321,4318,4326,4327,4322,4323,3655,3791,3792,3434,3436,3786,3787,3789,3790,3258,3263,3265,3834,4329,3266,3267] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [7115,7116,7118,7110,6043,6039,7111,6445,7107,7109,7009,7010,6620,6981,6623,6208,6209,6040,6104,6581,6225,6578,6103,6105,6577,6579,6576,6443] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [511,513,512,616,983,1014,631,633,984,985,986,988,987,989,389,395,1030,1389,1402,1418,1518,1515,1517,1519,853,851,1526] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [6300,6071,6082,6067,6068,6051,6299,7144,7134,7136,6954,7142,7143,6994,7117,7118,6969,6970,6079,6081,6088,6089,6241,6223,6224,6225,6297,6298,6308,6336] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [6868,6870,6872,6874,6896,6897,6904,8485,8499,8501,913,8502,8507,8509,932,933,6419,6420,6421,6863,6864,6837,926,505,8510,8511,658] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [6345,6307,5940,6548,6549,6314,6277,6316,6317,5919,6495,6497,6305,6306] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [671,715,716,957,686,687,688,689,956,253,274,275,690,724,725,247,937,903,722] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [3774,3518,3556,3130,3152,3691,3151,3451,3519,3488,3489,3707,3740,3764,3765,3762,3759,3760,3525,3527] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4329,4196,3277,3286,3296,3299,4165,4181,4353,4354,4327,3434,4328,4487,4479,4480] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [213,1565,1627,1566,212,1599,1597,184,191,193,1625,201,222] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [4327,3434,3547,4328,4345,3474,3452,3475,3507,3440,4346,4347,4329] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [4036,4718,4744,4229,3992] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [6465,6464,6473,5988,5990,6201,6146,6185] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [5879,5887,5888,5857,5859,5867,5850,5862,5878,7189,7158,7191,7156,7157] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [7076,6815,6816,6817,6840,6774,6842,8451,8453,7059,6776,6428,929,931,924,940,7071] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [2938,4629,4635,4643,4644,4647,5472,2931,2935,2936,5514,5517,5519,5520,4670,2947] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [7735,8055,8001,7600,7593,7573,7572,7699,7700,7702,7612] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [3393,3380,3394,3354,3357,3201,3684,3412,3675,3676,3681] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        