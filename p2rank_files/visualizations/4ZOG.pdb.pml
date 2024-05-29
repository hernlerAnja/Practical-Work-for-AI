
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
        
        load "data/4ZOG.pdb", protein
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
 
        load "data/4ZOG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [167,168,193,194,195,695,1120,1121,1122,690,718,693,145,146,144,721,139,143,708,701,318,320,653,1209,316,469,668,669,543,673,307,308,312,650,199,304,305,687,141,142,689,1106,1107,1093,169,170,172,171,173,728,752,749,1216,1196,1197,1205] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2326,2327,2328,2329,2330,2331,2297,2299,2352,2353,3214,3215,2815,2819,3216,2812,2300,2781,2783,2433,2785,2325,2801,2786,2789,2811,2303,2304,2301,2302,2846,2822,2802,2660,2764,2765,2749,2589,2769,2441,2746,3286,3287,3295,3296,3299,3302,3304,3293,2449,2564,2445,2447,2448,2588] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1233,1060,1061,1229,1057,1232,1056,4254,4256,1234,1320,3239,3240,2963,2987,2955,3247,1295,1296,1297,1310,1338,1350,1352,1361,1311,1318,1334,3249,403,404,405,406,407,443,1219,4216,4218,432,433,434,435,2989,2984,2985] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [398,387,388,389,597,616,352,615,349,4157,4191,4192,4155,4166,3040,3038,2637,2629,2631,2638,2645,3100,3060,3061,3062,425,634,590,3069,3071,382] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1900,1612,1613,1616,1865,1869,1875,1876,1615,1862,1863,1864,1576,1580,2116,1901,878,879,883,885,852,854,855,872,874,873,1610,876,1633,910] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [425,422,426,4226,4227,454,478,1,7,5,6,8,592,593] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2850,2893,2881,2888,2853,2855,2857,2808,2809,2806,2885,2802,3248,3227,2800,1315,1317,1321,1324,2927,2929,3250,2897,2928,1325] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3932,3934,3944,3945,3969,3970,3931,3684,3645,3682,3685,3649,2966,2967,2968,2970,3677,3679,3681,2948,2972,2973,2976,2946,2949,2978,3004] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [2383,2400,2402,2223,2224,2250,2683,2685,2757,2758,2682] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4034,4033,4035,4036,4038,3633,3601,3604,3740,3880,3835,3885] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1671,1535,1968,1970,1971,1811,1816] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        