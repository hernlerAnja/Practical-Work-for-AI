
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
        
        load "data/4CFM.pdb", protein
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
 
        load "data/4CFM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [290,108,172,173,174,738,92,723,724,705,95,98,101,763,89,762,91,93,536,677,1123,1124,697,673,670,672,671,668,275,691,693,1095,1107,1200,1203,292,432,535,1195,1196,1197] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [4683,4684,4606,4608,4610,4611,4618,5187,5204,4785,4599,4601,4602,4603,4605,5207,4800,5178,5180,5182,5183,5181,4802,5177,5241,5246,5247,5605,5634,5234,4942,5706,5707,5710,5711,5712,5713,5045,5046,5705,5633] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [3458,3459,3460,3467,5079,3025,3026,4551,5094,4552,4729,589,3430,3457,3433,3435,4541,4511,4512,4513,4514,4516,597,602,3426,3428,609,4532,588,5067,5068,5076,5071,4765,5171,3016] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [566,567,569,661,7288,7289,7693,7698,41,42,219,7279,255,269,560,31,7719,1,2,3,4,584,7720,7721,7722,7723,7686,7687,7692,22,7689,7691,557,558,559,561,5099,5100,5098,5102,5108,5107,5112,5113] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [510,1181,1182,1165,2386,1140,2385,543,544,678,681,6942,1152,1155,256,260,7310,6923,6943,7295,508,511,521,926,701,1137,683,686,710,711,6925] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [3852,3896,3822,3823,3835,3775,3833,3838,3824,3773,3874,3873,3875,3540,2607,2606,2976,2564,2593,2589,2598,3523,3528,3531,3533,2914,2939,2945,2948,2941,2942,2918,3783,3534] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [4399,4401,1290,1292,2877,1288,1289,2879,2891,2894,3548,3729,2887,3728,1273,3578,3580,3582,3583,3612,3554,1260,3550,2883,2884,2886,3676,3698,3708,3701,2892,2893] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [7967,7970,7939,7971,8650,7875,7877,7964,7965,7990,7966,7961,7844,7845,7140,7146,7147,7148,7811,7810,7149,7991,8663,8665,8666,5800] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [5692,5018,5020,5650,5662,5675,5661,5691,5211,2664,5665,6649,5021,3032,2679,2680,2681,5054,2660,3031,2661,2662,2658,5193,5196,5191,5221,4766,5188,5053] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [8086,8159,7803,7181,8046,8038,8085,8087,8036,7786,8137,7791,7797,8115,8138,7204,7205,7177,6870,8101,8096,6998,7239,7202,8042,8095,7211,7208,6860,8098] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [3554,1259,1260,3550,1273,3582,3583,2891,2894,3548,2892,2893,1249,1250,1251,3555,3556,1290,1292,3188,1289,3187,1246] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [1476,1477,1427,1464,1883,1884,1885,1913,1878,2228,1869,1470,1911,1481,1478,2229,2226,2227,2220,1487] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [5779,5787,6690,6012,6013,6694,6695,5793,5784,6716,6693,6020,6719,6758,5766,5768] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [6313,6392,6395,6396,6341,6397,6107,6109,6110,6141,6340,6346,6175,6453,6424,6425,6428,6451,6420,6421,6423,6320,6321,6176,6394] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [6728,6731,8344,7893,7895,7896,7850,6734,6700,6701,7885,7883,7881,7882,8306,8337,8340,8341,6741,6735,6738] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [300,301,626,627,60,184,185,11,12,645,646,644,59] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [5760,5761,5769,5770,5800,5799,7811,7846,7845,7451,7156,7817,7155,7154] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [3620,2468,3622,2439,3587,2465,3619,4077,3633,3632,3630,2478,2479,4081] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [1383,1385,1658,1644,1654,752,1100,1609,1395,1397,1635,1082,1099] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [7372,7049,7058,7392,7393] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        