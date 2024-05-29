
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
        
        load "data/7U6D.pdb", protein
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
 
        load "data/7U6D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3505,3507,3540,3538,3509,3514,4686,4688,3686,3687,3689,3690,4621,4622,4623,4624,4626,4627,4683,4673,4678,4629,4630,4631,4662,4652,4653,4628,3718,3739,3742,3500,3747,3751,3752,3722,3725,3760,3761] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [866,865,654,854,807,829,395,513,782,609,394] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [5810,6079,2978,3241,3242,3245,2980,5829,6076,6085,6088,5828,3240,3253,3475,6585,5812,3452,3453,3455,3457,3459,3476,5575,5578,5579,5580,5581,5313,5314,5577,5595,5598,5593,5594,3732,3735,3694,3701,3703,6047,3704,3706] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [5106,5109,5110,5113,5328,5332,5327,5330,4227,5114,5117,3746,4093,4196,4197,4198,4586,4587,3760,3761,4225,4226,4073,4591,4601,4288,4289,4290,4304,4074,3722,3718,3739,3742,3747,4210,5331,5333,4208,5329,4603,4606,4625,4626,4627] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [702,738,886,887,888,1112,1005,911,908,910,1139,1111,735,996,997,998,1003,1004,1006,1019,1099,1164,1097,751,752,754,830,1087,1094,1020,1269,859,1049,1072,1073] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1917,1973,1974,1968,1971,1913,1969,1970,1972,2145,2135,2137,2128,293,450,451,458,274,276,277,281,457,1921,695,1919,1924,1928,1931,1932] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [1021,1099,1100,1335,1218,1293,1315,1279,1097,1094,1269,1093,1294] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [6427,6955,6540,6938,6939,6940,6426,6446,6570,6571,6569,6642,2774,6445,6609,2764,2765,6075,6092,6099,6953,6944] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [6102,6112,6113,6114,7021,7023,6103,6944,6959,6960,7045,7046,6977,6040,6042,6044,6970,6971,6974,6038,6039,6071,5860,6095,6100,5853,6104,7019,6939,6940,6092] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1667,1665,1678,1682,1683,1738,1745,1834,1142,1147,1144,1145,1153,1829,1831,1832,1672,1347,1739,1722,1723,1724,1709,1715,1737,1681] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [6993,6027,6029,5892,5894,6995,6997,6998,5920,5891,5893,5890,5889,6010,6996,5961,5962,6041,6043,6026] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [158,991,992,156,159,1421,1422,1424,1404,1208,200,201,1226,180,1426] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [700,702,738,887,888,701,703,494,737,679,497] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        