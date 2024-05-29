
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
        
        load "data/5HVY.pdb", protein
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
 
        load "data/5HVY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2597,2598,736,738,1452,1453,2594,2607,2612,2613,494,445,448,493,495,459,929,930,932,992,993,994,1411,1448,1449,1451,705,737,1447,1145,2368,1466,1496,1499,5237,5238,5239,1144,1143] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1578,1579,1581,1582,1573,1656,2319,2323,1576,1546,1571,1574,2636,2638,2640,2290,2289,2291,2809,2810,2311,2747,2748,1637,1635,3230,1638,1603,2322,1544,2786,2788,3320,1709] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [927,929,931,992,993,994,2598,2586,972,974,2180,2096,1127,2584,2567,2568,2585,2097,1051,2194,2211,2217,2219] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [7914,7915,7916,7934,7939,7940,7993,7860,5390,5413,5416,8552,7840,8537,8536,5357,5365,5366,5367,5389,7843,7935,7938,8550,8551,8553,8555,8556] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [5310,5311,5330,5312,7807,7820,7823,7785,6983,6965,6421,6422,7808,6963,5313,6358,7864,6356,6357,6371,6372] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [4905,4964,4419,4452,4907,4448,3263,4364,4363,4420,1808,1805,1806,4990,1854,1855] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [7363,7365,9589,9537,9534,7443,6739,7462,6740,6741,6742,9627,9628] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4674,3012,4658,4659,2873,2874,2949,2952,2970,3905,3844,3843,3904,4648,3847] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [6514,6581,6046,5962,5961,6499,6101,6671,6497,6516,6043] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [9308,9310,9311,9369,9394,9398,9365,8387,9313,6134,6135,9402,6061,9400,9401,9305] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [8694,8748,9256,9254,9253,8212,8267,9255,9257,9259,8290,8288,9258] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        