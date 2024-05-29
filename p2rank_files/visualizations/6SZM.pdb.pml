
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
        
        load "data/6SZM.pdb", protein
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
 
        load "data/6SZM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6763,6795,6848,7050,7044,7047,7049,6826,6824,6825,4849,4896,4835,7346,7347,7374,7311,7312,6793,7348,7349,7350,8155,8154,6827,6828,6057,6059,7037,6023,6823,6882,6024,6077,6013,6019,6814,6820,6055,7897,4894,4935,5104,4933,4838,4934,5948,5950,5952,4836,4837,5134,5346,7043,5618,5880,6881,5132,5130,5916,5928,5347,5412,5126,5876,5917,6012,5963,5966,5983,7307,4877,4880,4881,7265,7267,7286,7306,7325,8306,7320,8292,8297,8308,8309,8291,7328,4887,4890,4891,4892,4893,4895,7266,7268,5227,5229,5275,5276] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [296,200,256,257,242,214,2156,2157,1378,2185,2186,1374,1379,2188,1439,2406,2410,2411,2122,493,2399,2405,495,2210,2409,2412,2125,252,238,247,248,251,241,254,701,2408,2553,2554,631,2448,2449,2450,572,573,581,582,583,584,2574,2589,2594,2599,2595,1235,465,491,972,973,1271,487,1283,295,2243,2244,1321,1368,1318,1305,201,202,203,294,1303] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [7497,7498,8354,8355,8356,8333,8334,8335,8337,8338,8398,4552,8400,8487,8332,8353,1719,1721,4489,7481,8486,8421,7462,8336,7327,7328,7288,7289,7479,7480,4622,1823,1824,1825,889,891,1837,1839,907,920,2343,2344,2345,1660,1663,1781,1783,1656,1658,1923,1925,1924,1890,861] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2155,2156,2157,2186,2187,1410,2188,2189,2190,256,228,242,223,1412,1414,2125,241,254,2600,2636,2637,2638,3478,3479,3480,3615,3608,2599,3633,3602,3207,2176,2662] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [7525,7647,7449,6740,7559,7560,7444,7288,7263,7284,7287,7299,7300,7448,7392,7446,8336,7497,7495,8333,8334,8335,8337,8338,7229,7232,7230,7248,6735,6736,6739,7115,7645,7526,7709,7388] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2933,2813,2814,2737,3019,2736,2676,2734,2101,2098,2097,2848,2102,2551,2576,2587,2588,2589,2680,2594,2597] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [4463,4459,4462,4464,4418,1891,4487,4488,4482,2958,2960,2905,2954,2962,2907,2908,2909,2997,1869,1885,1870,4472,4476,1871,1873,4442,2950,2952,2990,3047,2995] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [9100,9113,9083,9103,9104,9105,9059,6513,6515,6535,6514,6533,9127,9130,7662,6517,7617,7664,7665,7666,7619,7620,7621,7685,7687,7688,7737] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [6916,5547,6918,5530,5579,5631,5632,5969,5971,5972,5945,5931,5933,5929,5930,5932,5934] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1019,1036,381,383,1254,65,380,1020,450,1253,107,382,384,377,378,69] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [902,2278,1327,900,1285,1286,1326,2280,1324,885,934,986,987,1288,1300] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [1661,2333,2331,1615,1618,1619,1357,2261,1686,1560,1458,1459] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [6481,6483,5534,5536,9129,9193,6535,6469] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [5859,4738,4773,4774,5861,5702,5705,5899,4742,4739,5860,5854] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        