
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
        
        load "data/6XRM.pdb", protein
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
 
        load "data/6XRM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [9896,9897,9947,9950,9951,6867,6869,9948,6868,1911,2138,2222,2224,2217,2220,7577,7579,8954,10272,7494,7496,8973,8977,8978,2142,2216,10080,2196,10019,10077,10079,10081,2143,6804,6807,6808,6845,6844,6848,7493,7495,7491,7492,1946,906,907,7426,968,10008,10012,10211,10183,2272,2271,9952,10262,10263,10007] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [9271,9679,9680,9315,9316,9678,9213,9214,9639,9640,9356,9211,10251,11633,11664,11665,11666,11668,11511,10448,10461,10464,10467,11700,11702,9810,9807,9821,9749,9750,10274,10414,10415,10430,9876,10246,10247,10250,9227,9224,11479,11669,9238,9239,10541,11463,10514,11512] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [7474,8987,8065,8905,1934,8903,8051,8063,8116,8118,8119,8904,2541,8052,2540,7404,9471,9031,9032,2521,7472,1931,1851,1962,1932,1933,1852,1853,8989,8986,8988,869,870,871,872,839,840,2469,1963,1964,2432,2440,2453,2465,2466,7400,7402] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3259,6495,6496,6494,6497,3275,5447,12523,6474,6484,5369,5374,5375,5792,5373,5446,5312,6417,6419,5311,6416,5853,6513,6514,5852,5777,12737,12739,5323,5324,5325,5329,12579,12788,4600,4602,5344] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1910,1911,1908,1909,2225,2163,2164,1888,9519,2325,9522,2360,9011,9012,9449,9593,9515,9534,9537,9509,9448,1897,2359,9563,9565,9566,9539,9577,9589,9562,2311,2314,2315] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [384,386,387,403,402,367,4715,7802,4705,4706,4714,4724,4729,351,441,440,4707,4186,4184,4708,4180,427,7131,7133,424] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [12466,10035,12419,12421,10024,10021,10022,10093,10094,10023,9974,6888,6819,6345,967,968,6343,6311,6339,6328,6333] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1978,780,853,2000,2010,2011,1612,1764,1793,1814,1816,803,778,779,2456,1560,1570,1571,2012,2013,2023,2024,2025] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [12773,12683,12776,11372,9858,11715,11716,11343,12562,12564,11362,12772,11373,9856,9794,12608,12626,12609,12625] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [10703,10571,10572,11452,10640,11435,11437,10705,13441,13443,10643,10667,10679,10680,13442,11464,11465,11467] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [6924,6997,9822,7575,10303,10299,7651,9767,7637,7636,9820,9766,9763] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [2682,2707,2712,2680,2681,2692,3844,3830,3810,3827,3840,4225,3776,6079,6011,6012,6013,6023,6076,6078,6024,5957,5959,5961,5964,6027,3846,6552,4298,6555,6541] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [7424,1946,907,7426,8999,1911,2162,8978] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [11809,11253,11812,11893,11652,11813,11815,11653,11234,11235,11236] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [10325,10331,10335,7681,8319,10313,7616,8268,7611,223,240,242] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [3256,4677,3217,3216,4654,3957,3958,4651,4652,4058,3996,4584,4656,4596] 
set surface_color,  pcol16, surf_pocket16 
   
        
        deselect
        
        orient
        