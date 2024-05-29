
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
        
        load "data/2HCK.pdb", protein
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
 
        load "data/2HCK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4043,8297,8298,8299,8325,8326,8328,8329,8332,8338,8362,8327,8360,4159,4160,8333,8335,8337,8361,8396,8106,8132,8093,8095,8058,8094,8092,8134,8059,8056,8443,8365,3840,8442,4977,3880,5211,8319,8356,7040,7041,7043,5202,5201,5203,4965,4966,4990,4071,4074,4075,4073,4079,4081,4107,4189,4108,4111,4142,4102,736,737,4065,948,4188,723,947,949,957,732,4084,3852,3878,4045,4083,3804,8413,8414,3839] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [1922,2980,3094,3100,3101,2990,1923,2064,2066,2068,3127,2536,2528,2529,2532,3010,1876,1880,1884,2981,2962,2989,2537,2565,1866,1861,1862,1863,1865,1868,1869,2503,2328,3009,3092,2473,2474,2050,2480,2054,2060,2499,2502] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [6757,7263,6786,7262,7264,6790,6791,6756,6177,7354,7355,6320,6322,7346,7234,7244,6765,6781,6782,6819,6734,6753,6727,6728,6117,6119,6120,6115,6116,6122,6123,6175,6176,6314,6318,6747,6749,6304,6707] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [8352,6971,4994,5021,8384,6940,8385,8388,5359,5369,5376,5379,5381,6980,5029,6951,6979,6981,5068,6949,6978,6939,5412,5018,5022,5387,5384,5025,8379,8382,8383,8398,8386,8399,8438] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2066,3118,2067,2088,2089,3125,3126,3122,2131,3129,3131,3132,3133,3094,3095,3100,3139,3103,2233,2234,2173,2350,2351,2175,2456,2171,2196,2328,2474,2454,2455,2457] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [767,1115,1126,1105,4098,740,4125,4127,4128,4129,4145,4144,4113,812,814,815,775,2725,2726,771,2697,2695,770,4176,1133,4184,1139,1143,768,2685,4130,4131,2684,2689,2690,2686,2687,4132] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [693,705,680,674,676,794,795,659,604,605,606,548,633,684,1627,1604,72,73,74,512,514,1601,1597,1598,539,60,62,58,61,637] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [6134,6138,6148,6149,6151,6153,6130,7197,7235,7216,6321,6322,6342,6343,7393,6177,7355,7379,7381,7243,7244,6133,6156] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [4314,4315,4316,4858,4887,5848,5851,5852,5881,4327,4328,5858,5855,4959,4923,5049,4929,4931,4932,5048,4934,4938,4859,4860,4913] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [711,752,712,2288,2296,2286,2786,4065,2789,2287] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [6320,6425,6427,6711,7380,7393,7386,7354,7348,7349,7379,6451,7372,7383,7385,6605,6710,6450,6487,6488] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [6551,6552,7328,7310,7311,7293,6553,5005,6563,5003,5004,5006,5048,5046,4959,5030] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [6550,5006,6542,6540,4950,5202,4965,4966,7040,7041,7043,8320,8318,8319] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [8082,8084,8122,8123,966,8080,1205,1206,7990,8052,7980,961,962,972,964,992,954] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [4593,4384,4731,5945,4420,5936,4732,4734,4406,4413,4410,4589] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [3173,3174,3138,3123,2922,3313,3314,3256,3292,2923] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [1691,1693,480,482,162,338,477,478,152,156,1687,1682,339,132,130,335,337] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [7957,7958,7954,7799,8160,8157,7674,8159,7637,7801] 
set surface_color,  pcol18, surf_pocket18 
   
        
        deselect
        
        orient
        