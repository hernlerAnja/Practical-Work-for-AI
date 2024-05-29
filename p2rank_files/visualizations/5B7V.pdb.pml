
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
        
        load "data/5B7V.pdb", protein
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
 
        load "data/5B7V.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [206,207,179,180,1182,1183,1184,349,725,729,747,1260,606,607,1261,1262,1280,1266,1267,1268,608,724,1279,527,528,1277,495,361,363,364,365,709,177,173,174,175,178,768,750,775,1154,1168,778,771] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2977,2978,2982,3426,2602,2614,2616,2618,3510,2476,2477,2443,2996,2439,2441,2444,2447,2475,2861,3520,3522,3504,2781,3515,2748,2780,3000,3003,3427,3503,3505,3509,3511,2440,3021] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1896,1739,1869,1748,1762,3957,3971,1751,4105,4103,4104,4106,4099,4078,1750,1901,1890,1892,1893,1894,1895,4110,3876,3942,3875,3932,3959,3960,3943,3946,4096,4097,3948,4102,4117,1897,1733,1887,1888,1734,1666] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1855,1820,1821,1822,3955,3961,3967,3652,3968,3972,3628,3973,3933,3612,3616,3610,3962,3963,3965,1830,1793] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1605,1608,2036,1743,1461,1838,1887,1889,1742,1438,1638,2038,1872,1882] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        