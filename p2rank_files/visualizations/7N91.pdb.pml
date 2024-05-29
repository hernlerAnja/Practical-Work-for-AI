
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
        
        load "data/7N91.pdb", protein
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
 
        load "data/7N91.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [165,115,119,120,127,1219,111,2243,2245,2246,107,108,109,113,114,1111,1112,735,682,288,1199,1189,1190,286,287,271,705,687,680,712,2237,2247,2251,2278,2280,164,733,734,760,1083,1084,1095,1200,1191,1192] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3167,3674,2632,2633,2634,2771,2772,2773,3165,3172,3190,3195,2580,2756,3193,4733,3675,3677,3676,3685,3568,3580,3684,3596,3038,3196,3597,3704,3220,2576,2577,2583,4732,4724,4730,4763,4765,4767,4734,4738,3217,3218,3569,3714,2595,2588,2589,2596] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3235,3239,3272,3237,3563,3564,3259,3261,3266,3572,3747,3960,3987,3958,3959,3260,3297,3749,3999,3998] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [4561,2189,2191,2193,2194,2195,2196,4566,4562,4563,4559,4535,1134,1135,1137,1138,4532,4545,4531,700,718,1133,696,1136,247,693,688,691,251,246] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1128,1176,1177,523,2087,2088,1136,691,562,1137,1138,1144] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [752,1078,1088,1262,1260,776,778,785,788,750,1087,1234,779,1471,1472,1473,1500,1511,1512] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [850,852,853,874,2005,2019,2004,2018,2012,2008,2105,2106,879,881,2110] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        