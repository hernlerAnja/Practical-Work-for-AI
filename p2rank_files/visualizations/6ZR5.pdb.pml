
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
        
        load "data/6ZR5.pdb", protein
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
 
        load "data/6ZR5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3087,1598,901,1558,3086,1589,1592,874,877,878,876,1587,2967,2968,3073,3076,907,2969,899,3251,3090,3092,3253,3075,1338,1352,1354,1365,1367,1363,1336,1170,1172,3243,3245,3246,3247,3244,1186,1187] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [864,887,861,1209,846,847,852,853,854,855,857,822,1210,836,840,838,839,3261,2920,2919,885,886,2918,2921,232,278,372,234,237,228,239,240,243,279,387,388,389,816,818,817,277,1185,1193,1194,1285,646,1286,1283] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1251,1253,987,988,1238,1240,2741,2743,2730,2826,2828,629,630,1023,1025,618,619,622,2389,2393,2369,2371,2854,2819,986,2852,2383,2384,2390,2392,1015,2861,2863,1236,2848,2849,2850,2820,2821,2824] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [5775,5788,5870,5426,5427,5896,5898,5428,5907,5909,5894,5895,104,106,108,109,5774,4159,4160,3939,3902,3937,4146,4147,4136,3533,3541,3540,5424] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3203,3159,3160,3162,3164,3165,3202,3204,3313,3314,3168,3189,3729,3297,3724,3725,4119,3557,4190,4192,4193,4095,4104,4189,3461,3157,3745,3746,3153,3743,3747,3759,3762,3760,3761] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1420,1422,1423,1827,1681,1754,1755,1783,1784,1792,1793,1796,1434,1802,1777,1782,1678,1843,1848,1861,1826,1746,1860,1676,1849] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [5744,5739,80,139,5777,5779,5740,119,767,776,715,703,745,747,138,140,5714,792,794,5748,5751,5757,5773] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4313,4317,4319,4331,4306,4364,4295,4642,4644,4641,4643,4257,4635,4223,4224,4250,4258,4261,4316] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3085,1595,1602,1583,1581,2961,1729] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        