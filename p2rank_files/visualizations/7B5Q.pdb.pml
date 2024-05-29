
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
        
        load "data/7B5Q.pdb", protein
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
 
        load "data/7B5Q.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [8022,8023,3550,3587,6466,8018,3585,3653,3599,3645,3649,2846,2849,2852,3549,3551,6444,3602,2230,3600,3631,3628,3566,3580,3596,8101,8085,8102,8103,8088,2231,2848,2862,7525,782,783,1000,7568,7570,852,851,3651,8060,8061,6518,6519] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [7490,7505,7506,7509,7510,313,7492,8525,7436,7438,9967,10006,9965,9966,9975,7441,9990,9989,9991,835,310,764,766,767,332,834,265,267,297,299,250,261,264,298,7491,7508,8039,7550,7551,836,833,657,725,687,688,8520,8526,9898,9900,9901,9921,9886,107,121,7511,7513,7512,157,1049,193,194] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [6132,5785,7932,7935,7934,5807,5808,5850,5853,5880,5813,5793,5794,6338,6339,6350,6130,6131,6410,5834,6175,5854,6340,6342,5837,5839,7922,7712,7729,7713,7716,6970,6304,5768,5769,5879,5771,7763,5772,6937,6872,6874,6875,6870,7762,6922,6099,6888,6920,6951,6952,6936,6949,6950] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4179,4237,4307,4180,4181,4182,2270,2256,2257,2258,2020,2018,2019,2305,3634,2205,2208,2207] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [5237,5257,5216,5217,1877,1875,1380,1813,1814,1815,1812,1762,1320,1323,1765,4263,4276,4281,4282,4283,1260,1256,1258,5160,5219,5236,5260,1874,5242,4246] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [7962,7963,7935,7934,6342,5837,5839,7972,7973,7974,5820,7648,7680,7681,7729,7716,7649,8235] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [6152,6154,6719,6824,5699,5700,6717,5659,5611,6109,6110,6111,5696,5697,5894,5897,5693,5660,5692] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1657,1683,1703,1568,1569,1498,1701,5587,5588,5596,5550] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [119,124,137,140,7440,6568,7395,7396,7397,91,87,7398,38,90,40,6566,6582,6581] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2899,2897,8150,7626,8154,8156,7974,8004,8122,6386,6387,6316,7968,7970,6318] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        