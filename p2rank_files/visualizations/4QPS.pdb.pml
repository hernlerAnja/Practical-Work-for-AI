
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
        
        load "data/4QPS.pdb", protein
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
 
        load "data/4QPS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [143,146,133,134,139,140,1061,1070,1073,706,733,2306,1168,1169,1172,1173,1174,1175,166,168,169,170,319,320,321,417,135,137,178,179,305,670,1092,1167,676,1091,658,701,687,698,679,2293,2295,2298,2301,138,180,317,536,651,652,638,654,534,2287,2289,2283] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3002,2930,2931,2933,3338,2908,2911,120,2322,105,2904,2906,122,112,98,99,100,2309,126,129,2316,2318,2965,3299,2938,2962,2937,3304,3428,3313,3416,3422,3424,3426,3430,3413,3414,3308,2319,2321,2373,2375,2374,2508,2324,2358,2356,2354,2883,2884,2886,3337,2890,2742,2741,2902,2498,2499,2500,2897,2514,2629,2871,2512] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [721,723,1064,1066,1344,1558,1345,1650,1651,1601,1617,1615,1613,1600,1637,1638,1599,1584,1634,1607] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [3604,3605,3903,3904,3917,3301,2952,2953,2955,3818,3862,2993,3861,3859] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [696,740,782,779,781,1123,2277,2278,1120,2283,2280,2284,2272,2275,2276,2279,692,694,2245,806,807] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [107,109,2486,2487,2921,2922,269,212,292,293,2407,265,108,2485,2481,2475] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1877,1493,1676,1490,2016,2017,1350] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3942,3783,4235,4236,3753,3750,3751] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        