
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
        
        load "data/4WV1.pdb", protein
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
 
        load "data/4WV1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [7629,1179,1186,1189,7886,7888,4701,1188,4545,4546,4547,4544,4562,4564,4565,4552,4549,7621,7627,7628,7865,7878,7879,7880,7885,7887] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [186,187,188,4120,6969,6970,6814,492,4036,171,4037,4038,4055,4084,6808,6968,6989,6990,6991,6992,6981,462,6962,4103,4104,4117,6821,4058,528,530,461,172,529] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [2362,974,988,2363,2364,2447,5332,2384,2443,989,990,1293,5176,5177,2381,2429,2430,2410,2411,5170,1349,5324,5351,5353,5354,5331,5330,5352,1295,1263,1264,973,1330,1331,1332,5183] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [416,6240,6241,6242,377,405,2870,383,384,386,387,5990,2871,2872,2873,3027,6247,6248,378,6250,390,2890,5991,2891,2878,2888,5989,2875,5988,6225,6227,6249] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [545,546,547,4024,4025,6961,6996,6963,7013,7018,4020,4022,171,156,4019,157,3498,4156,4003,4004,4005,7007,7009,7011,3294,548,553,543] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1348,5369,5371,5375,5380,2348,2350,2351,973,1355,1347,1349,5323,5325,5358,1250,2331,1780,1790,2346,958,959,1824,2345,1345,1350,2330,2482,2329,5373] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [4213,4654,3568,3949,4228,4227,4436,3567,3947,3948,3924,4232,4240,4449,4652,4610,4609,4633,4241,4434] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [2275,2250,2274,2553,2554,2566,2558,2760,2762,2567,2959,2935,2978,2980,2539,1893,1894] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [5384,5397,5398,5386,5289,5294,5391,5306,5425,5247,5248,5249,5290,5554,5231,5286,5288,5229] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [1963,2457,5679,5651,5653,5657,2024,2025,2026,2027,2011,2012,1942,5665,1941,2432,2436,2437,2424] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [395,2672,3040,3054,323,578,399,401,2669,2671,318,340,393,321,322,328,331] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1201,4343,4344,1120,1142,4714,4728,1130,1133,4345,4346,4352,1197,1124,1125,1380,1195,1198,1199,1122,1123] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [3637,4131,3685,3686,3700,4098,7289,7291,7317,3616,7303,7295,3698,3699,3701,4106] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [3001,6306,6307,6308,6168,2714,2986,2987,2989,2985,2988,2990,6322,6171,2928,2942,2944,2731] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [7945,7944,7946,7577,4403,4661,4616,4618,4602,7809,4405,7960] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [1988,1989,2126,2119,1969,1970,1833,2176,2114] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        