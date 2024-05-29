
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
        
        load "data/6G33.pdb", protein
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
 
        load "data/6G33.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2943,3920,4328,2967,4211,3107,4204,4205,3370,3506,3507,3512,3516,3509,3511,3582,3960,2931,3528,3533,3541,3530,4232,4210,4224,4226,3217,3218,2950,2953,2968,2937,2938,2940,2957,2958,3166,3168,2962,2965,3121,3106,3122,3163,3187,3189,3188,3192,2930,2932,2934,2986,2987,2988,3091,3105,3555,3543,3550,3554,3959,3943,3931,4201,4202,4203,3534,3536,3932,3933,3901,3902,3903,3919] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [5065,632,300,5092,5152,3656,5151,5091,4606,5120,5129,5132,5076,5088,5090,1434,793,776,1433,1231,1233,1240,1241,1243,770,778,773,781,783,4077,1234,1242,1417,611,5121,5122,5123,5124,5140,574,583,650,651,299,303,306,307,4621,310,3635,3650,3657,4620,4602,237,785] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [1446,1448,1216,1187,1215,797,811,838,1188,474,1449,1199,1453,1456,772,786,789,790,762,763,768,625,626,1447,765,767,221,340,324,219,220,167,165,200,201,176,171,173,163,169,170,164] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [6940,6262,6263,6716,5728,5848,6939,6941,5729,5846,5847,6699,5709,6946,6949,5708,6260,5832,6281,6285,6687,6715,6301,6333,6688,5671,5672,5678,5684,6292,5673,6284,6294,5676,6305,6306,5677,5679,5681,5675,5969] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [1199,1455,1456,1157,1158,1159,1175,1188,1601,1176,1469,1470,1471,1477,1582,1584,1604,195,198,410,412,190,200,176,183,186,440,473,339,340,437,396,433,435,436,400,401] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [6948,6659,6949,5691,5703,5706,5708,6676,5694,5698,5915,5848,5847,6657,6658,7073,5913,5938,6962,6963,6964,6970,5899,5901,5940,5943,5910] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [6095,6097,6543,6544,6546,8166,6602,6568,6567,6096,6569,6574,8142,8140,6513,442,446,448,450,6601,488,489,491,444,445,460,6600,425,426,427,454,6609,6610] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [3571,3572,3573,3935,3936,4669,4670,4354,4355,4356,263,272,273,3642,284,285,4627,4628,4648,4649,4651] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [513,515,5033,5034,6590,5015,4998,7200,490,491,669,6600,6599,6616,6617,6618,7002,7199,7201,643,667,647,653,656,660,5014,5016,5030,6619,514,511,512,5070,8126] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [4344,4307,4318,4320,3892,3893,3895,4452,3894,4231,4243,4230,4305,4232,4406,4482,4448,4450,4449,4360,4370] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [1174,1191,1192,829,827,1613,1615,1886,1888,1627,1625,1833,1831] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [6566,6591,6593,8127,7198,7195,7196,7197,7202,7203,7207,7208,7229,8083,8121,8124,8125,8126,8090,8104,8115,5033,5034,6590,4998,7200,7199,4999] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [7086,7087,7088,7359,7360,6320,7303,6322,6324,6692,7099,7097,6391] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [4919,4984,4983,4985,4982,4962,7583,7584,7585,7164,7165,7559,8086,7557,7545,8085,7550,8078,8079,7548,8091] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [5047,5077,4652,4653,283,282,4625,4617,4619,4632,650,5045,298,5076,5136,5083] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [1471,1473,1475,1476,1477,1149,1150,1488,1573,1584,1712,1563,464,465,1552] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [805,4087,4065,803,804,1249,797,796,798,789,4072,795,236,784,162,168,4084,164,4085] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [1496,1118,8142,8141,8151,8176,522,8143,523,524,1498,525,1106] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [3627,4115,4119,3591,3654,4133,3702,3664,3669,3673] 
set surface_color,  pcol19, surf_pocket19 
   
        
        deselect
        
        orient
        