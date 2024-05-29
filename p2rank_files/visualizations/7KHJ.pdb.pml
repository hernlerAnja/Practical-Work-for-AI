
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
        
        load "data/7KHJ.pdb", protein
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
 
        load "data/7KHJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [777,774,770,772,399,2639,2640,2632,2638,2600,403,404,405,406,3015,3013,781,783,784,308,309,311,3401,3039,1250,3391,3392,3394,3395,3418,3419,1260,1261,2645,3019,1257,1258,2646,1251,2647,2642,3012] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [790,1313,1235,1236,1314,1321,262,296,418,780,782,294,786,789,1322,268,269,270,271,273,274,811,814,818,821,1205,259,260,263,295,265,266,763,764,768,543,432,433,434,430,279,280,277,275] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2510,2514,2516,2538,3380,2536,2537,2668,2672,3349,3432,3433,3440,3441,2674,2676,2785,3053,3061,3062,3060,2513,2512,3028,2660,2897,2898,3005,3379,2659,3006,2988,3031,3032] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [275,276,1345,1343,1344,1460,438,277,278,450,483,484,485,488,544,433,434,520,1334,1335,1338,513,514,1322,1219,1183,1319] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [795,797,3037,3038,3046,3048,3050,806,808,799,804,807,801,3049,3024,3026,1253,1256,2554,947,949,2553] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3904,3905,3906,4046,4047,4051,4174,4177,4179,4048,3902,4044,3796,3821,3822,3823,3824,3825,3826,3828,3896,3897,3914] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1647,2171,1610,1611,1624,1625,1117,1092,1115,1116,1118,2166,2169,2172,2183,2187,1614,1616] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3438,3439,3441,2675,2676,2757,2760,2762,3462,3327,3464,2755,3453,3454,3437] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        