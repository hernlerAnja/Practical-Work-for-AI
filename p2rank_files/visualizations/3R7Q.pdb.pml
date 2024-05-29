
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
        
        load "data/3R7Q.pdb", protein
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
 
        load "data/3R7Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3719,3721,465,471,472,473,3685,3686,1090,1096,1098,983,984,985,4495,4496,965,967,986,3406,3717,3765,3716,3718,3720,3402,3403,4942,4968,4964,4965,4966,4967,5121,4481,1125,1126,1127,5107,5104,3444,4906,5135,5137,3764,5127,4482,3414,3416,3382,3383,3415,1083,1084,1085,5032,501,502,5030,5031,1081,1109,1122,1079,1080,1086,1111,1113,1149,1150,4995,5088,1147,5068,5069,5070,1110,1119,1146,1157,1158,4963,4991,4994,4996,4997,5000,4992,4993,4990,4999,543,545,5058,553] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5849,4858,5835,5834,4836,5836,4608,4816,4607,4672,4674,4618,4619,4856,4605,5825,5827,5828,5829,5720,5258,5747,5253,5748,5220,5244,5830,5833,5732,5281,5724,5198,5203,5210,5215,5199,5214,4901,4862,4902,4873,4815,5114,5117,5118,5116,5115,5113,5217,5223] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1598,6373,6372,6316,6284,6285,6405,3216,3221,3222,3223,3224,3220,3233,3210,2632,2631,2636,2637,2642,2876,2646,6251,6260,2638,2663,2664,2703,2902,3235,2865,2898,2901,3185,3182,2866,2875] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [974,975,976,977,4522,4524,4525,3705,3672,3707,4500,4501,4502,4032,4033,4459,4460,4461,4006,3675,1274,3677,3999,1247,1276,453,449,450,451,452,3673,434,937,997,3679,3671,973,3682,4503] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [5857,5858,5859,5860,5861,6397,6398,5840,5659,5667,5665,6424,6396,5674,5852,5856,6277,6301,6336,6334,6279,6308,6309,6357,4926,4893,6333,6342,4890] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3425,3427,3148,3150,3144,6234,3389,3390,5039,501,502,503,3142,3131,3358,3135,3391,5007,6235,5000,5001,4999,6212,6210] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [208,216,217,207,209,2290,2298,2028,2297,188,3876,3877,3878,2294,241,198,235,240,2030,2036,2034,3546,3547,2292,233] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3816,3845,3847,3848,2004,2005,2207,4865,2221,2226,6313,2249,2259,2260,2261,2262,2248,6332,6338,6344,6348,6321,6326,6327,6328,4882,4883,6320,4881,3498,3827,3826,3823] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1870,1876,1882,2983,2955,2960,2468,2469,3012,3257,1886,2092,3266,3014,3016,3249] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [5208,4481,4497,5206,5207,5224,4781,5104,4495,4496,966,967,4486,4488,5205,5212,4800,4515,4794,4790,4795,4785,4514,4516] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [6742,6743,5299,5300,5304,5305,5318,5317,5335,5294,5292,5325,5722,5723,5272,5271,5307,5707,5708,5721,5724,5713,5716] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1126,1170,1171,4758,1169,1097,1098,1192,1193,1195,952,953,4751,4755,958,4747,966,964,4516,4750,1175] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [6634,6637,6010,6015,6639,6004,5999,6002,6006,6007,6001,5930,5933,5934,5353,5959,5961] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [406,1240,1241,443,408,410,905,908,394,416,418,922,1011,1012,917,920,1014,1015] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [5675,5631,5632,5635,5608,5610,5846,4958,4959] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        