
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
        
        load "data/5F95.pdb", protein
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
 
        load "data/5F95.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1717,3634,3778,3779,3780,3793,3794,3795,2749,2751,2753,2743,2744,2747,2874,1689,1692,3650,3651,3663,3665,3666,3667,1698,3797,3801,2720,2722,2726,2769,2770,2771,3662,3674,3279,3690,3691,3771,3772,3773,3774,3777,3058,3057,2859,3228,3233,3253,2724,3246,3248,2872,1685,1690,2732,1715,2735,2742,2738,2740,2741,1708,1716,1741] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [214,216,334,336,1236,1237,1155,692,418,184,186,232,233,234,319,697,212,1139,1242,1243,1245,1239,1238,1244,180,743,717,714,1156,710,712,708,1131,723,724] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4254,1101,1103,1119,1120,1139,1243,1245,1259,1260,1261,1262,1265,1244,1258,4245,4246,4222,4252,4253,4278,214,210,198,201,212,206,207,1132,4229] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [142,602,27,583,585,162,242,241,243,140,240,16,163,672,326,244,245,343,345] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [779,812,863,891,893,895,892,894,896,2318,813,870,1174,1176,1177,780,931,932,1163] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1421,3881,1456,3984,1351,3992,1420,1448,1454,1419,4262,4225,4231,4263,4236,4237,1354,3995,1372,1688,1726,1694,1699,1700,1725,3919,1382,3955,3956,3957,3994,3905] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2885,3136,3206,2777,2779,2781,2702,2778,2780,2782,3117,2568,2579,2681,2683,2867,2567,2866] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3709,3711,3712,3392,3461,3462,3422,3399,3423,3425,3424,3426,3315,3316,3347,3348] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1398,1411,1396,1613,1654,1655,757,759,761,1399,1127,1132,1410,1118,1387,1385,4226,4227,4229] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4268,4269,4271,4005,1360,4339,4340,4371,4582,4007,4301,4333] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        