
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
        
        load "data/3L1S.pdb", protein
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
 
        load "data/3L1S.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [256,261,262,263,266,269,4360,4368,1297,1310,1311,1296,1294,1295,1290,1288,595,271,272,288,289,290,398,383,739,596,734,1312,489,469,415,416,414,1168,4369,1151,1191,1179,1289,253,244,247,234,235,237,240,241,236,238,239,756,759,1207,1208,1184,1180,1181,811,766,785,4344,1429,4349,4350,1318,1427,4359,1314,4361,4392] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3749,3765,3766,3789,3889,3892,3893,3895,3888,3887,3886,3894,3916,3908,3909,3910,3045,3041,3025,3778,3779,3781,3777,1782,2817,2812,2825,2827,1774,1807,2818,2819,2822,1783,2809,3381,2792,3362,3806,2844,2845,2846,2939,2793,2795,2954,3330,2828,2972,2791,2803,2797,3152,3805,3153,3335,3355,3369,1764,1775] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [712,13,14,65,407,409,190,192,213,214,215,296,297,298,299,300,301] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1754,1765,1766,4068,4069,4070,4107,4108,4097,1413,4103,4105,4002,4005,1519,4037,4377,4378,4351,4352,1484,1405,1406,1409,1410,1791,1792,1482,1445,1511,1522] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3652,3680,3654,4751,4753,4760,3678,3679,3686,3687,5060,5061,4761,4748,4752,4170,4158,4161,4164,4162,4163,3682,4168,4169,3943,3944,4171,4174,4198] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1572,1575,1576,1578,1580,1582,1583,1584,2488,2489,1577,1346,1345,1612,2159,2170,2188,2179,2181,1585,1588,1080,1081,1082,1088,1089,1106,1084] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3824,3826,3827,3506,3575,3576,3455,3513,3539,3454,3417,3418,3538,3540] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2854,2855,2857,2856,2963,2965,3307,3234,3235,2852,2853,2771,2769,2619,2946,2746,2748,2947,3215,2770,2620] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [978,908,940,941,942,1229,1228,821,822,846,858,859,915,1226,1214,1216,775] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        