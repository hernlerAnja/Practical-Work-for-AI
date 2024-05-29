
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
        
        load "data/3SLS.pdb", protein
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
 
        load "data/3SLS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3612,2712,2805,3590,3591,2804,2835,2711,2730,2694,2695,2696,3054,3562,3037,2943,3039,3040,3053,3564,3567,3576,3579,3558,2930,2931,3573,2858,2859,3574,2929,2941,2855,3552,3556,3557] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2532,2533,3126,3127,3128,3095,3103,2577,2535,2536,2578,3053,2676,3058,3074,2537,2538,2539,3451,2579,2695,2696,3054,3563,2544,2547,2543,2546,2562,2565,2563,3085,3077,2550,2554,3459,3554,3450,3096,3098,3102,3476,3094,3475] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [566,567,568,758,772,773,1297,1292,1302,1311,1291,1308,591,1319,588,676,1283,786,784,662,663,671,674,442,443,759,1321,532,1325,1326,1314,461] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [1289,1186,1185,1211,835,836,1210,831,860,859,266,807,810,828,407,786,787,791,1194,1298,1187,427,274,263,264,275,861,269,272,308,310,309,267] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1347,1688,1714,3976,3978,1438,1402,1444,1429,3636,3638,3637,4002,1440,3686,3685,3712,3721,3727,3666,3723,1690] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [666,667,795,1273,1255,1239,793,796,95,96,94,121,1256,59,1241,633,629,67,58,92,71,1226,800] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3611,460,3604,499,2797,2770,1342,2772,498,1334,1336,1341,1343,3612,3610,3589,2803,2826,2793,2771] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3067,3060,3062,3063,2363,2358,2361,2362,3506,3504,2933,2934,3520,2328,2330,3521,2335,2326,2327,2357,2921,3538,2342,2896,2336] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [38,647,649,36,37,1026,35,15,1257,1247,1249,1253,635,974,998,996,2132,1264,999,1002,971] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [1393,1170,1181,1394,850,851,852,1374,1375,1187,1186] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [2584,2585,2586,2588,2589,2590,2502,2605,2683,2684,2685,2504,2460,2704,2703] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        