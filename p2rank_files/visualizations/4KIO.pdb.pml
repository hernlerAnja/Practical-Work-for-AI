
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
        
        load "data/4KIO.pdb", protein
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
 
        load "data/4KIO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3980,3982,3969,3978,3979,3981,3962,4510,4526,4534,4506,4518,4504,4024,4023,4127,4490,4502,4507,4480,4481,108,110,111,113,101,573,601,602,585,593,577,94,4043,114,571,4548,4571,4882,3984,4896,4999,4142,4144,4485,4486,4998,4483,4025,4143,4535,4911,4988,4990,4910,4482] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [6530,5974,5980,6497,6507,6019,6020,6021,6140,6952,6138,6139,6441,6002,6006,6493,6494,6870,6869,6943,6944,6440,6439,6485,2059,2060,2061,2062,2109,5958,5975,5976,5977,5978,6039,5965,2541,2512,2524,2532,2540,2516,6461,6463,6465,6469,6477,6466,6123,6449,2042,2056,2058,6841,6855] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [7322,7353,7354,7356,7323,7325,7345,5348,5383,5384,5362,5381,5509,5511,7385,5506,5507,5508,5481,5482,5501,7316,7303,7313,5444,5445,5446,7300,7304,5479,7377,1595,1593,5359,5363,5365,5367,5375,5366,7378,1402,1403,1404,1405,1597,7379,1596,7386,1440,5329,5330,5331,7407,7376,7408,7375,5335,5347,5327,7422,7423,7419,7421,5274] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [638,109,110,111,112,113,115,116,573,601,602,605,578,579,585,577,117,615,952,119,122,989,988,974,1078,245,571,547,557,574,114,142,261,262,548,550,552,553,437,1070,143] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [2554,2891,2090,2091,2089,3009,3010,2060,2062,2908,2909,2927,2928,3001,3002,2541,2513,2516,2517,2518,2065,2067,2070,2064,2058,2577,2209,2488,2210,2486,2487,2489,2193,2496] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [3354,3507,3484,3486,3488,3487,3492,3501,3508,3280,3515,3517,3353,5458,3388,5676,3368,3387,3452,3389,3390,3365,5112,5087,5459,5460,5456,5428,5122,3512,5109,5118,5090,5091,5094,5132,5673] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [1462,1464,7062,7063,1460,1497,1531,7072,1530,1433,1466,7401,7378,1594,1564,1566,1422,7379,1348,1409,1421,1586,1596,1427,1567,1580,1587,1529,1498,1499,1500,7074,7369,7055] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [5055,5069,5070,4885,5284,4887,5030,5337,5339,689,5338,5057,5346,5322,5326,5320,5321,4562,4563,4883,4570,673,4600,4560,4561] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [7011,6845,6846,7280,7274,7279,7278,6558,6559,2612,6844,7287,7267,6521,7010,7226,6522,6842,7263,6529,6997,6996,6980] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [4433,4443,4445,4446,4460,4412,4150,3947,3949,3905,3906,3907] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [5521,5522,5551,5552,5533,5535,5543,5544,7412,5555,5560,5558,5554,7606,7608,5566,7566,7568,7565,7589,5565,7429,7431,7432] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [7316,7303,7315,5444,5445,3545,5436,3541,5466,5476,7304,3336,3337,7307,3323,3302,3311,3313,5465,5438] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [7462,7463,7496,7501,7474,5667,5665,5666,7472,7475,5625,5627,5636,5638,5601,5604,7506] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [7300,7276,7304,5476,5479,7452,5472,5473,7272,7303,5444,5445,7453,5481,7323,7307,7271,7268] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [4144,4486,4998,4006,4264,4467,4195,4235,4237,4294,5021] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [2449,2450,2451,2452,2027,2440,1986,2466,2029,2216] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [5694,5090,5091,5094,5146,5130,5132,5148,3390,3418,3451,3419,3421,5685] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [510,513,527,79,81,38,39,483,500,268] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [6404,6393,6402,6405,6392,6146,6418,5902,5943,5944,5945] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [6527,6530,5974,2574,2613,2614,2615,6567,6568,2624] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [5216,5357,5454,5489,5652,5653,5654,5494,5246] 
set surface_color,  pcol21, surf_pocket21 
   
        
        deselect
        
        orient
        