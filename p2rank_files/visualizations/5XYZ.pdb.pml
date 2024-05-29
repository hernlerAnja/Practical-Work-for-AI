
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
        
        load "data/5XYZ.pdb", protein
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
 
        load "data/5XYZ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [742,2769,764,765,2760,2761,739,740,2273,2275,2733,2735,2725,2726,2770,990,992,1006,2263,2264,2265,2737,3677,3701,407,772,793,794,795,1802,1803,395,397,406,1005,773,2759] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2292,2293,387,816,817,2703,2704,2673,2674,2648,2647,2649,2681,2651,2650,2908,2909,2910,826,824,852,861,851,1779,2617,3754,1778,377,2283,378,2901,2915,828,2682] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [597,118,127,128,129,119,349,527,530,246,248,250,1051,526,236,242,961,549,233,421,544,567,962,570,589,963,121,122,545,945,1034,1035,596,934,1030] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1996,1997,1998,2115,2871,2870,2872,2854,1988,1990,1991,2477,2943,2944,2957,2425,2409,2119,2117,2960,2118,2450,2451,2469,2447,2102,2441,2443,2452,2306,2307,2424,2429,2305] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2175,2181,2361,2177,2152,2174,2203,2205,2961,2116,2962,2963,2410,2128,2132,2390,2388,2389,2146,2147,2133,2347,2408,2211] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [449,207,208,211,174,176,186,206,430,431,446,448,450,214,217,441,443,2329,210,212,1870,2045,2044,2055] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [321,325,316,317,462,508,475,510,528,530,1052,1054,245,507,296,297,289,511,283,263,264,259,509,278,303,334,333,357,474,29] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [175,176,186,2078,2080,2081,17,19,14,443,12,16,4,8,2332,2045,2044,2055,2334,2336,2316,2317,1885,2321,2327,2329] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [377,2284,2283,378,379,2887,2894,2901,2915,361,2904,2434,2430,2433,2438,2931,2316] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [984,985,986,2264,2265,991,995,978,550,553,558,975,398,430,1022,397] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2651,2899,2906,2622,2626,2907,2908,2574,2549,2588,2647,2511,2512,2658,2590,2682,2657] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        