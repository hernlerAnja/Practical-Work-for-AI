
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
        
        load "data/3VRY.pdb", protein
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
 
        load "data/3VRY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3300,3301,3302,3326,3333,3325,6819,6821,6690,6917,6903,3398,3423,3384,3422,6657,786,3146,3169,3171,3105,3135,6918,6941,3106,3138,3323,3349,3324,3346,3354,606,3357,3353,3322,3328,3330,778,598,599,3438,6852,6844,6942,6841,6842,6843,6846,6847,6851,6876,3399,6872,6873,6845,6820,6652,6664,6624,6663,6654,6688,6622,4260,6956,4252,4072,4073,6950,6952,6839,6868,4080,4082,4253] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [2443,1655,2511,2512,2513,2518,1555,1657,1658,1660,1665,1669,1672,1809,1991,2541,2542,2030,2049,2050,2444,2022,2026,1502,2024,1503,2005,2006,1901,1902,1990,2027,2528,2520,2419,2422,1673,1556,2053,2057,2082,1499,1500,1505] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [5185,5186,6032,5184,6031,6055,5932,5940,5566,5570,5595,5563,5518,5519,5956,5957,5503,5504,5413,5414,5415,5322,6054,5540,5544,5543,5551,5562,5397,6024,6025,6026,6033,6036,5067,5068,5013,5015,5016,5182,5069,5011,5012,5018,5170,5171,5173,5178,5537,5539] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [6875,6905,6906,4084,4104,4106,6864,4408,4410,4405,4425,6881,6888,6892,6893,6895,6897,4391,6856,6935,6937,4414,4424,4102,4105,5693,4141,4399,4139,4083,5727,5728,5726,4108,4112,5729,5705,5692,5694,5695,6931] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [610,629,630,631,632,3386,916,936,931,3345,2207,3358,3369,2181,2182,3373,3376,3378,667,668,925,665,2214,2215,638,634,2209,2210,2213,2179,2180,2184,2190] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1688,2567,1692,1720,1721,1722,1699,1956,1684,1755,1756,1968,1969,2541,1685,1686,1964,1754,1953] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [5198,5199,5201,5233,5197,5232,5469,5205,5482,5466,6075,5267,5268,5269,6078,6054] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [3538,3539,3999,4000,4801,4799,4804,4817,4820,4800,3903,3899,3525,3527,4805,4028,4034,4036,3987,4019,3971,3975,4042,4044,4038,3972,4126] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [497,513,65,51,64,498,501,63,53,425,445,527,1287,568,564,554,545,1286,1291,1308,560,562] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2420,1673,2519,2427,2565,2567,1532,1534,1536,2389,2390,2391,2584,2585,2547,2543,2544,2408,2568,2516,2539,2540,2542] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [5185,5186,6030,6032,6055,5045,5932,5940,5941,5904,5921,5026,5027,5053,5041,5050,5043,5069] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [3756,3758,3761,3867,3868,3870,3760,4871,3590,4867,4875,3762,3588,3589,3763,3616,3872,3587,3610] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [6010,6011,5373,5980,5996,4815,4827,4828,4814,5527,4829,4830,4831,5547,5969,5970,5994,5532,5971] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [283,285,286,1358,1362,281,282,284,287,393,1364,394,396,398,289,113,129,142,1354] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1842,1843,1893,1894,1819,274,275,276,1818,1339,1341,1909,1338,1352,1906] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3025,2892,3020,2893,3187] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        