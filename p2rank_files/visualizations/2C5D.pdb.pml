
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
        
        load "data/2C5D.pdb", protein
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
 
        load "data/2C5D.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4470,3086,3088,3042,3043,4479,4480,3089,5837,4474,4241,4476,4500,5857,5858,4540,4558,5818,5819,5816,5817,4468,3338,3342,4247,4251,5812,4238,3028,3029,5637,4437,3109,4439,4441,4443,4444,5820,5821] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1525,74,1526,1584,1586,2883,1604,2864,2865,1489,1490,2866,2868,2862,2863,2858,2867,2683,1511,89,135,151,1483,1487,155,153,1522,88,1479,1480,1516] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1396,1416,1418,236,6292,256,258,6275,6276,6277,6428,6430,1332,1352,1350,1349,1379,1392,1389,1393,1382,1371,277] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [976,863,977,913,914,7462,896,953,7458,7459,7463,7464,947,8175,8167,7467,8185,8164,8168,7465] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4343,4344,4347,4350,7730,7732,7883,7885,7731,3212,3213,4346,3190,3191,7747,4333,4325,4300,4303,4284,4306,4372,4370] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3867,3868,3907,6007,3906,3901,6003,6706,6004,6008,3817,3930,3931,6709,6713,6714,6712] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1514,1290,1522,1546,1284,1287,1288,2903,2904,1511,89,132,134,1516,1293,384,1291,2883] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [5725,5726,5730,5850,5852,5841,5743,5844,4530,5847,5848,5851,5659,5664,5665,4521,4522,5663,5653,5846] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1551,1553,1555,1559,1568,2695,2709,1791,1793,2179,1770,2697,1771,2698,2704,1554,2931,61,2914,2909,2696] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1621,2833,1630,1631,2573,2576,1618,1614,2662,2850,2852,2834] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        