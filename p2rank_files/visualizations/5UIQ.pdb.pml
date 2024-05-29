
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
        
        load "data/5UIQ.pdb", protein
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
 
        load "data/5UIQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [194,195,200,201,204,206,213,1012,1037,1020,1112,1113,241,243,214,323,326,327,1114,1118,311,618,621,593,595,602,623,591,592,1036,596,597,503,504,505,193,196,197,199,242,645,674,649,629,641,642,643,683,1121,207,217] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5450,5486,4847,5487,1075,4992,4882,4883,4884,4886,4993,4885,5472,5473,5441,4850,4854,1077,743,5449,7288,1805,1806,1807,755,756,759,760,779,780,736,754,1078,790,791,792,782,732,738,739,730,681,1798,1799,4997,4628,4624,1792,1785,7286,4846,1066,818,639,1072,816,5012,4838,4839] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [2952,7060,7166,7167,7168,7169,6824,6820,7057,7053,2965,3248,3240,2990,2992,7058,7041,7013,7014,7616,7194,7622,7623,7625,7172,7624,7176,7187,7647,3250,7026,7029,7648,7661,7662,2909,2907,2914,2921,2925,2926,2963,2852,3252,5111,2927,3949,3955,3956,2930,2931,2950,2951,3962,3963,3964,3961,2957,2961,3246,2901,2908,2910,3935,3942,2810] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [7575,7583,7237,6718,6724,7181,7205,7175,7177,7184,7192,6720,6721,6716,6719,7185,7208,7599,7600,7675,7676,7677,7681,6854,6855,7678,7682,6751,6753,6726,6727,7684,7051,7154,7155,7156,7165,7158,7159,7160,6839,6722,6752] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [3210,3286,3287,2664,2666,2763,2764,2765,2766,2768,2325,2366,2367,2445,2446,2331,3288,3194,3292,3293,3295,2328,2785,2789,2430,2762,2773,2320,2321,2322,2442,2443,2845,2854,2319,2807,2812,2813,2814,2816,2821,2820,3211,2787,2792,2800,2806,3186] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [5033,5425,5037,5038,5400,5424,5500,5501,5502,4556,4983,4557,4658,4659,4984,4985,4502,4503,4555,5062,4515,4525,5408,5509,5009,5029,5030,5006,4990,4643,4979,4981,4875,4877,4980,4982,5017,4506,4507,5002,4461,4504] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [5462,5464,7637,7639,7641,7202,7620,5445,7302,5027,5028,7299,7317,7344,7346,7347,7354,7379,7381,7629,7353,5168,5180,5452,5454,7318,7322,7323,7306,7301,5148,5131,5143,5144,5147,6174,5177,6183,5178,5142,5466,5167,5170,5124,5126,5127,2888,2894,2895,2896,6175] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [7036,7421,7423,7424,7425,8589,8587,7445,7028,2786,2801,2802,2810,2800,3232,3233,3234,3236,7020,7450,7452,7482,7447,7481,7647,7027,7029,7648,7037,7405,7380,2903,2416,2417,2784,2412,2415,7483,8564,2775,2780,2781] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [2982,2953,2950,2951,3964,3960,6801,6818,6819,6794,6802,2989,3014,4263,4259,4260,4262,4264,6804,4253,3996,3995,3976,2938,2955,7076,7077,6833,6820,6795,7074,7073,6529,6796,6503,6507,6509,6511,6484] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4861,5247,5248,5250,6419,6421,4844,5246,4845,5270,1062,6454,6455,289,292,293,6395,6396,5307,5306,5308,6420,631,632,1060,1061,609,630,4852,4853,1058,613,615,299,297,604,629,639,4854] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [781,767,1819,2092,1807,776,779,1838,1839,769,808,2098,2101,2103,4901,4902,783,4600,4622,4623,4624,1803,4606,1818,1820,840] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [4896,4899,4901,4902,783,4898,4269,4292,4314,4296,4297,4293,4295,781,4599,4600,4637,4622,4623,4624] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [8061,8114,8115,8123,8135,1548,8284,8286,8047,8322,8323,8281,8062,8314,1535,1549,1550,1552,1554,1547,1534,8273,8069,8089,8054] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [5180,5206,5454,7306,7300,7318,7322,7323,8345,8347,725,8338,8344,5167] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [8103,1507,1508,1561,1744,1746,8102,1569,1581,1783,1493,1515,1535,1500,1733,8088,8089,8104,8106] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [985,1001,1002,1119,1120,1121,1143,222,217,218,221,214,325,326,327,368,365,223,225,340] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [5929,5901,5954,5955,5963,5971,5902,3705,3706,3721,3723,3720,6120,3725,6122,6124,6109] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [5472,5473,4854,4852,5201,5202,4862,5459,5468,5474,5230,4861,5250] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [1061,1053,1099,482,481,604,1062,5279,5281] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        