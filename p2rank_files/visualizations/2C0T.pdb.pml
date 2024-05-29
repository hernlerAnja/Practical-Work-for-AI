
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
        
        load "data/2C0T.pdb", protein
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
 
        load "data/2C0T.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5363,5990,5991,5992,5997,5922,5923,5999,5287,6002,6012,6015,6018,5257,5258,6013,6036,5510,5529,5998,5898,5536,5532,5537,5561,5361,5378,5381,5285,5484,5485,5136,5034,5148,5150,5151,5467,5468,5469,5470,6021,5238,5239,6020,5237,4981,5509,4982,5489,5506,5503,5505,5152,5035,5033,4977,4978,4979,4983,4984,5263,5266,5380,6003,5354,5356,5309,6006] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [3318,3392,3393,3348,3351,3416,3417,3347,3378,6634,6763,3319,3320,6765,6632,6598,6601,786,606,3343,599,589,777,778,779,598,3322,3140,3327,6886,6861,6885,6862,6884,6847,6856,3294,3164,3165,3295,3296,3324,3132,3099,3100,3163,6786,6790,6791,6795,6796,6787,6816,6764,6609,6568,6785,6788,6789,6817,6820,4067,6819,4245,4247,4254,4246,6783,6812,4074,4057,4058] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2067,2453,2432,2521,2522,2527,2529,2060,2063,2454,1500,1502,1555,1556,1667,2040,2034,2036,1679,1681,1682,1683,1675,2528,2437,1505,2429,1499,2015,2032,1665,1894,1895,2037,2016,2000,1666,1997] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [6850,6881,4098,4100,6808,6849,4385,4419,4402,4404,4408,4418,4428,6836,6837,6839,6841,6800,4077,4078,4097,4099,5694,4393,4135,5658,5659,5689,5692,5660,5661,6875,6879] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [609,2224,2225,2226,633,638,667,925,931,937,3339,3352,610,3380,630,631,632,940,916,917,934,936,951,634,665,950,3366,3381,3406,3410,3412,2217,3331,3356,3370,3372,3367,3368,2190,2195,2189,2191,2192,2199,2200,2219,2223] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1909,1912,1911,2016,2000,1816,1789,1793,1818,1817,1794,1797,2001,1894,1892,2533,2542,2523,2528,2530,2543,2545,2546,2549,2544,2551,1679,1681,1682,1999,2534,1768,2567,1770,2522,2512] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [501,564,499,497,498,53,63,64,65,513,545,554,526,425,562,651,1288,1286,1291,652,584,560,1283,1287,1308,567] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [4032,4022,4025,4028,4013,4030,4765,4766,3990,3970,3965,3981,3988,3995,4770,3531,3532,3533,3893,4786,4787] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [284,286,287,289,142,393,394,129,133,136,396,1362,113,116,1354,1361] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1869,1871,618,616,590,2279,1863,617,1868,1880,1867] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [5746,5747,5748,6783,6812,4085,4086,4057,4058,4247] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3604,3601,3610,4833,4836,3581,3582,3584,4841,4843,4837,3862,3864,3861] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [6248,6355,6356,6493,6650,6652,6654,6483,6487,6653,6655] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        