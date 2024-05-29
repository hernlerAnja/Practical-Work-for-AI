
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
        
        load "data/7MQS.pdb", protein
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
 
        load "data/7MQS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [836,837,838,839,612,867,638,866,636,733,732,746,748,747,775,799,534,556,557,224,587,588,589,590,591,592,593,405,613,614,580,581,427,429,615,241,464,465,481,240,480,239,428,509,336,338,263,191,221,120,121,122,945,827,821,824,825,925,926,1057,1059,1386,1096] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [4968,4960,4964,4973,4974,4975,4933,4936,4971,5978,4932,5976,5970,6355,5975,6350,12914,12946,4944,12650,12652,12647,12649,6118,6119,6120,6116,6113,6115,5982,12651,4945,4961,4962,12563,12683,12665,12666,12667,12668,12669,12670,11627,11628,6109,6110,5995,5997,5998,5996,12559,12560,11633,11639,11624,11629,11625,11626,6349,6351,5999,12541,11636,11637,11640,12539,12540,12542,12913,12915,4989,4992,11649,11657] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.471,0.902]
select surf_pocket3, protein and id [1909,20,1911,1903,1742,1902,1743,1744,1745,1746,1748,1747,185,1,647,1705,1706,1701,1702,1707,1693,1698,1786,1671,1687,419,420,630,412,413] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.325,0.702]
select surf_pocket4, protein and id [2750,2751,3021,2752,3019,3018,2897,2926,2924,3207,3209,2925,2766,2769,2842,2768,3023,3020,3129,3130,3194,3246,2560,2575,2646,2860,2558,2870,2868,2843] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.365,0.902]
select surf_pocket5, protein and id [12568,12570,12872,12427,12426,12324,12799,12856,12858,12798,12873,12408,13021,12322,12327,12328,12780,12406,12781,12797,12891,12444,12445,12442,12689,12691,12547,12690,12998,12999,13000] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.318,0.278,0.702]
select surf_pocket6, protein and id [11729,753,754,756,11727,700,738,11723,11758,471,472,11762,11763,11764,11765,740,698,477] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.459,0.361,0.902]
select surf_pocket7, protein and id [7504,7621,7622,7384,7385,7292,7646,7647,7422,7426,7484,7395,7423,7397,7972] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.400,0.278,0.702]
select surf_pocket8, protein and id [7151,7173,7023,7024,7197,6986,6987,6988,7116,7149,7397,7398,7172,7425,7148,7150,7152,7175,7291,7292] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.565,0.361,0.902]
select surf_pocket9, protein and id [12584,12821,12858,12586,12659,6251,6257,12800,12587,6094,6023,6022,6067,6070,12804,6294,6295,6079,6096,6074,12820,12824,12829,12815,12817,6253,6260,12859,6265,12660,12608,6240] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.478,0.278,0.702]
select surf_pocket10, protein and id [5160,5163,3833,5125,5127,13764,13726,3830,3831,5133,5134,5132,9029,4357,3862,3863,4349,4366,4365,9195,9196,9179,9010,9011,9012,9013,13732,5095,5096,9389,4345,4348,4332,5165,5168,5170,5172,13735,5201] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.671,0.361,0.902]
select surf_pocket11, protein and id [10138,2585,10982,10972,10990,10198,10199,10966,11059,11064,10987,11006,11058,11060,11002,11003,11004,10159,10160,10162,10156,10157,10133,10125,10149,10200,10178,10191,9938,9940,10189,10136,9944,9948,10967,10968,10513,10635] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.561,0.278,0.702]
select surf_pocket12, protein and id [11784,13096,13098,13229,13231,13355,13193,13191,13198,13199,13202,13228,13230,13232,13120,11773,13326,11776,13129,13161,13162,13196,13205,13119] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.773,0.361,0.902]
select surf_pocket13, protein and id [13129,13155,13160,10835,13176,13204,13205,13324,13325,13347,13127,13128,10839,13292,13290,13322,13348,13345] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.643,0.278,0.702]
select surf_pocket14, protein and id [3086,3087,3321,3322,3295,3296,3298,3061,3063,2767,2841,2842,3264,3266,3040,3117,3088] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.878,0.361,0.902]
select surf_pocket15, protein and id [11610,6083,6088,6086,6087,12697,12722,12725,12727,11592,11619,11611,11609,12684,6105,6106,12677,12682] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.675]
select surf_pocket16, protein and id [6895,6681,7141,6799,6800,7093] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.816]
select surf_pocket17, protein and id [10670,10532,10968,10513,10637,2583,2585,10982,10983,10671] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.592]
select surf_pocket18, protein and id [4276,4256,4274,4472,4474,3743,3909,4257,4259,3725,3726,4204,3727,4179,4181] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.710]
select surf_pocket19, protein and id [13438,4164,4188,13587,13468,13471,13604,4170,4171,4174,13473,13477,13515,13513,13516,13693,13476,13486,13481] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.510]
select surf_pocket20, protein and id [9898,9900,9887,3521,3522,3554,10100,9889,3523,3287,3289,10098,10099,3534,10121,10122,3285,10145,3529,3531,10130] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.604]
select surf_pocket21, protein and id [8075,8097,8098,7440,7442,7430,7431,7439,7633,8086,7434,8194,8191,8192,8042,8043,7635,7636] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.431]
select surf_pocket22, protein and id [11768,275,276,491,492,11767,11804,11805,13260,13263,13272,257,13254,767,11777] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.502]
select surf_pocket23, protein and id [7691,7692,7694,9249,7266,7478,9211,9218,9248,7267,7265,7669,7670,7263,7469,7470,7471,7472] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.349]
select surf_pocket24, protein and id [10844,10845,10521,10830,10354,10538,10539,10537,10939,10940,10941] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.396]
select surf_pocket25, protein and id [6548,8331,8333,6744,6567,6578,8507,6566,6545,8350,6563,8503,8497,8505,8327] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.294,0.278]
select surf_pocket26, protein and id [2329,2330,2211,2168,2191,2201,2207,2068,2047,2212,2213,2214,2160,2161,2162,2067,2165,2090,2169] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.431,0.361]
select surf_pocket27, protein and id [2871,2869,2557,2410,2543,2541] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.376,0.278]
select surf_pocket28, protein and id [4048,3851,3837,3841,3843,5112,5114,5115,7737,7521,7522,4059,3853] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.533,0.361]
select surf_pocket29, protein and id [4804,4802,5307,5308,5324,5548,5549,5598,4786,5512,5581,5578] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.459,0.278]
select surf_pocket30, protein and id [5751,5876,5877,5886,5735,5740,5889,5736,6328,6413,5882,5760,5863,5989,5880,5878,5910,5987] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.639,0.361]
select surf_pocket31, protein and id [3546,3580,4404,4406,3341,3342,3578,3579,3597,3329,3337,3334,3335,3333] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.537,0.278]
select surf_pocket32, protein and id [9945,9947,9979,9980,10005,10116,9978,9969,10129,10112,10113,10006,10047,10048,11018,11026,11033] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.745,0.361]
select surf_pocket33, protein and id [6235,6308,6236,5844] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.620,0.278]
select surf_pocket34, protein and id [13964,5189,5191,13727,5155,13939] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.851,0.361]
select surf_pocket35, protein and id [4916,4938,5968,5969,5959,4888,5967,6140,4919,4991,4892] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.698,0.702,0.278]
select surf_pocket36, protein and id [11033,11036,11037,11043,11050,11051,11026,9980,9978,10046,10048,10000,10002,10007,10011] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.843,0.902,0.361]
select surf_pocket37, protein and id [6979,6981,8288,8291,8292,8328,8488,8489,8495,6550,6551] 
set surface_color,  pcol37, surf_pocket37 
   
        
        deselect
        
        orient
        