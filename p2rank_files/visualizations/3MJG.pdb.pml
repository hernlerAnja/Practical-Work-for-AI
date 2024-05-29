
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
        
        load "data/3MJG.pdb", protein
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
 
        load "data/3MJG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [269,297,298,151,157,272,1205,1198,266,168,265,259,262,162,1204,5316,5563,1201,144,145,146,147,5536,5537,160,5507,5508,5510] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [851,4706,5018,5019,5040,5042,853,857,859,521,837,843,852,279,281,4489,4487,542,526,539,540,541,5015,4478,4452] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2553,2554,2888,2890,2867,49,48,34,54,50,1096,1082,1084,40,56,2335,2337,1345,1343,1344,2863,2326,2300] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1555,1556,4884,1546,1551,4886,4887,4888,1549,1550,867,872,873,874,860,4704,4702,4894,4895,4896,4891,4693,4697,5041,1172,875,879,1176,1543,4881,1185,1181,878,1539,4711,4712,4707,4710] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [401,402,950,388,389,394,399,954,949,960,963,965,970,971,973,3356,3358,3360,3357,3359,3361,3355,969,3384,3385,3411,381,387,3164,1068,375,1101,1098,947,948] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2732,2734,2735,2555,2541,2542,2546,70,384,2550,2552,2739,2744,740,743,753,748,72,75,76,2559,2560,2558,736] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [2041,1822,1823,2448,2449,2049,2053,2054,2055,2056,2269,2432,2431,2447] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        