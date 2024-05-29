
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
        
        load "data/6L20.pdb", protein
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
 
        load "data/6L20.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3866,3865,3458,3837,3960,3963,2989,3444,3295,3430,3443,3432,3433,3964,3058,3059,3060,3449,2992,2990,3478,3455,3451,2995,3011,3012,3013,3073,3074,3075,3970,3965] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [6661,6561,6657,6659,6660,5638,5673,5779,5780,6124,6125,6127,6129,5990,5992,6534,6563,5636,5639,5792,5672,5674,5641,6662,6547,6668,6155,6157] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1524,1489,1490,1856,1854,1855,1857,1850,7440,1486,1474,1482,7200,6804,6805,6807,1867,1868,7203,6902,7467,6919,6920,6894,6900,6921,7212,7214,1846,7210,1454,1449,1452,1574,1548,1458,1459,6798,6791,6868,6870,6795] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [4172,4173,4098,4103,4104,4106,4138,4499,4503,4505,4139,4495,4504,4506,4202,4203,4205,9465,4223,4101,10096,10098,9870,9872,9579,4109,4110,10095,10091,10092,4131,9453,9463,9464,9577,9578,9552,9456,9858,9861,9560,10125,9567,9568,9576,9566] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [8804,8437,8785,8436,8438,8792,9317,9318,9315,8782,8783,8649,8336,8826,8830,8833,8335,8813,9219,9220,9221,9316,8825,8819,8346,8347,8450,8452,8454,8787,9325,8788,8543,8786,8574,8337,8338,8333,9205,9319,9323,9327,9333,9192] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [409,410,411,334,336,809,802,806,810,353,351,352,829,826,783,781,788,425,646,1314,811,1315,1316,1319,1320,1322,1201,1188,1187,1216,1217] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [6693,5848,6692,2099,2100,6505,6506,6666,6667,6684,6507,6547,6523,6668,5795,5796,6538,5884,2078] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [6848,6849,2109,6537,6539,6540,2138,6832,6860,6846,7178,7142,2110,2111,6828,6827,6826,6521,6523,2105,2137,6836,2098,2103,7135,6201] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4755,4757,9486,9490,9494,9840,4791,4751,9180,9196,9197,9485,9198,9181,9484,8868,9506,9507,9504] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [9227,9229,9716,9743,8896,8894,9211,9212,9032,9742,9005,9290,8991,8990] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [10492,10503,10509,10512,10513,10514,8031,8042,10515,10519,10520,8052,9072,9098,9646,9641,9642,9645,8024,9627,9636,8025,8029] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [187,165,148,157,160,1393,1395,177,176,1360,1361,1362,1415,1416] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [3541,3539,3874,3857,3639,4388,4361,3650,3636] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6912,7426,7433,7499,7332,7367,7368,7431,7429] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4752,4513,4514,9858,9860,9494,9854,9493,4751,4498,4511,4792] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        