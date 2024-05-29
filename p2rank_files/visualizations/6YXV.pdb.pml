
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
        
        load "data/6YXV.pdb", protein
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
 
        load "data/6YXV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [102,196,5989,5996,5997,5998,5999,5990,98,340,341,173,180,170,5036,5042,5045,5049,5770,5023,5782,5783,5784,5074,5988,5991,5993,5055,5053,5056,5768,5773,327,328,329,658,333,336,337,339,640,641,661,5018,5016,5021,5025] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [5421,4334,4335,5321,5322,4887,4762,5395,5419,5392,5396,5418,4381,4382,4383,4501,4880,4881,5292,5301,5302,2922,4931,4932,4934,4323,4324,4326,4329,4904,4923,4926,4327,4899,4901,4332,4933] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [3190,3316,3317,3319,2280,2659,2661,3287,3290,3293,2778,3315,2821,2829,2660,2824,3219,3220,2797,2225,2399,2785,2802,2221,2227,2832,2279,2281,2233,2224] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1096,1126,1105,1225,1221,1222,1223,1226,1110,131,186,185,305,684,685,691,1125,1193,1196,319,1200,703,708,714,726,727,705,128,735,127,130,738,133,136,139] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [7055,7058,7416,6447,6453,6506,6505,6507,7023,7025,7028,6451,6625,7445,7446,7034,7047,6639,6640,7543,7545,7520,7521,7005,7004,6887,7516,7513,7426,7425,7430,7542] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [218,2297,2298,2300,2312,2304,2310,2301,2302,93,208,203,204,206,207,209,210,216,205,2187,2198,104] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [5294,5803,5804,5534,5295,5297,5435,5437,5449,5450,5499,5502,4950,5293] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4289,4412,4414,6613,4399,4300,6527,6523,6526,6520,4400,4402,6413,6538,6423,6424,6528,6536,4404,4406] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4985,4986,4987,5795,5778,2892,94,5013,5014,2819,91,2864,2808,2813,2814,2815,2816,2859,2862] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [3689,3690,3546,3549,3779,3781,3581,3966,3968,3818] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [1487,1685,1687,1724,1719,1712,1735,1290,1452,1455,1734,1595,1596] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [5678,5913,6098,6099,6100,5508,5713,5515,5516,5821,5822] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3300,3302,3301,3352,3353,3357,3309,3310,2570,2571,3136,3130,3132,2572,2600] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [8161,7741,7744,7976,7579,8023,7884,8018,7602,7578] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        