
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
        
        load "data/3UYT.pdb", protein
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
 
        load "data/3UYT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4785,4893,4736,4784,4786,5760,5761,5001,5764,5765,5767,4894,4895,4887,4891,4741,4732,4734,4738,4744,4748,5035,5224,5225,5226,5219,5207,5211,4877,4878,5034,5267,5635,5666,5759,5247,5255,5268,5293,5248,5242,5244] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2454,2456,2455,2560,2547,2545,2408,2410,2401,2403,2405,2407,2900,2901,2878,2920,3315,2910,2916,2946,2908,2546,2876,2879,2895,2475,3295,3413,3284,3409,3412,2650,3411,2417,2413,2562,2682,2684,2864] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [7546,7961,7549,7543,7547,7548,7069,7070,7178,7071,7072,7163,7176,7524,7525,7522,7021,7541,7930,8059,8055,8057,8058,7330,7296,7179,7180,7554,7023,7029,7017,7592] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [983,1097,1100,1101,1102,1105,562,368,561,563,560,231,556,87,89,94,137,138,139,140,229,244,92,544,230,247,248,97,101,1108,548,972,85,91,1099,1003,586,587,581,585,584,1002,592,604,1001] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1383,1965,8550,8738,8571,8574,1783,8552,1960,8737,8711,8195,8200,8201,8202,8733,8191,8193,8194,8731,8734,1779,8554,8555,8553,1375,1376,1962,1964,1781,1770,1793,1777,1780,1961,1938,1811,1801,1804,1808,1809,1817,1798,8543,8577,8317,1820] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3335,3359,4602,4603,4621,4606,4608,3320,3321,3327,3360,3361,2914,2915,2906,2954] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1779,8555,8553,1782,1756,1757,3994,3996,1783,1409,8551,1748,1720,1721,1780,1778,8527,8523,8525,8557,8561] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [5708,6887,5671,5678,6885,5262,5261,6900,5301,5706,5707,5686] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [7600,9049,9029,9047,9061,9062,7560,7561,7966,7981,7973,8005,8007,8006,9006] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1008,599,598,1015,1023,638,1049,1047,2274,2276,2289] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1334,1742,1702,1335,1339,1342,1621,1633,1637,1641,1645,1701,1329,1343] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2167,6766,6779,2163,5446,2165,6830,6828,2138,6737,6738,6739,6733,2101,6724,5445,6763,6764,6765] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        