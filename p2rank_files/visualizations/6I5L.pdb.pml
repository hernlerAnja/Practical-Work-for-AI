
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
        
        load "data/6I5L.pdb", protein
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
 
        load "data/6I5L.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [173,164,165,166,170,168,202,339,341,760,761,220,221,222,756,325,755,758,4901,4900,4932,172,174,177,4946,171,201,4992,4993,4994,181,829,830,831,1181,1182,1180,1208,1209,792,799,803,804,790,859,1192,1442,1444,1445,1446,1449,1452,462,785,765,779,782,619,1443,4908,819,821,4909] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2969,2987,2988,2989,2937,2938,2939,2940,2932,2933,3106,3108,3525,3527,3528,3522,3092,3532,2935,2966,2968,2944,4215,4213,4214,3975,3976,3557,3559,3566,3546,3549,3550,3551,3552,3947,3948,3959,3598,4216,4223] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [6974,6708,6736,6976,6737,6975,5867,5748,5750,6288,5749,6293,6284,6286,5853,6307,6311,6312,6313,5729,5730,5705,6709,6710,6720,6310,6318,6327,6320,5692,5693,5694,5698,5696,6331,6332,6359,5700,5702,5699,5701,6287,6977,6978,5869,6289] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [2294,2290,2292,2293,3163,3198,2964,2954,2958,2966,2968,3159,3161,3173,3175,3199,3122,3170,2963,3228,3107,3108,3123,4243,4240,4244,3917,3918,3919,3935,3936,4353,2272,2275,2276,4242,4342,4340,4238,4221,4222,4223,3959,4334,4336,2330,2274,4319,4330,2297,2298,2288,2328,2329,3164] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [4880,4908,821,822,4914,1580,1583,1185,1181,1182,1168,1169,184,187,191,199,201,4897,4901,4902,177,820,1816,1854,1864,1868,1869,1857,887,889,1585,1601,1603,1604,1613,1615,1167,1184,4885,4896,4915,4916,1891,1892,1890,1893,1911,4883,4889,4894] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [406,403,429,431,432,433,436,461,355,397,408,187,191,192,196,199,201,340,341,356,1152,1168,1169,1192,1451,1452,1181,1182,1150,1473,1592,1151,1465,1466,1468,1576,1580,1591] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1921,1925,1926,1906,7671,7680,2114,2125,2144,2145,7092,7094,7457,7650,7651,7458,7191,2123,2124,1659,1567,1557,1560,1562,7087,1574,1554,1652,1570,1625,7438,7446,7453,7124,2143,1919,7451] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [6997,5934,5936,5959,5960,6678,6679,6680,7005,6983,5868,5869,5989,5961,5883,5884,5931,5964,5715,5719,5720,5724,5727,5729,6696,6697,7114,6984,6720] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [7400,7401,7422,7425,6348,6350,7348,6712,6713,7145,7147,7136,7135,7134] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [362,13,204,205,364,365,11,12,182,215,1,7,15,19,21,206,178,179] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [4384,4386,4587,4640,3656,3952,4354,3587,3589,3585,4374,4371,4373,4375] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [6441,6446,6479,6450,6451,6892,6404,6431,6436] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        