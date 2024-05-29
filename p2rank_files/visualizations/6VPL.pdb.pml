
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
        
        load "data/6VPL.pdb", protein
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
 
        load "data/6VPL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3923,3920,3921,3924,1618,2917,2885,2886,2881,1248,1432,1434,1613,1614,1615,1617,1437,1455,2854,2852,1607,3919,3874,3790,3870,3878,3796,3747,3741,2915,2952,3743,2950,3748,3716,3713,2913,2914,2916,2946,3746,3754,3757,3749,3750,3751,1565,3557,3717,3724,3715,3914,1584,1561,1569,1481,1486,1487,3726,1461,1462,3893,559,560,561,562,587,588,589,590,591,1408,1406,624,626,1221,2875,2877,2879,2871,1198,1438,1439,1440,1441,1442,1443,2874,556,548,612,50,51,614,617,2906,2333,620,613,646,647,648,649,650,1415,1417,3770,3771,555,545,549,551,553,579,2973,2974,2975,2977,8,580,2943,2905,2376,2938,2939,2940,2377,2976,528,3752,526,651] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [722,923,1314,1315,1381,459,279,288,292,294,443,276,444,870,316,875,427,887,893,896,260,889,299,303,304,305,315,317,442,257,258,263,264,266,913,914,268,275,269,261,634,871,635,570,1386,1387,1388,1389,3780,3779,1286,1298,1416,286,287,296,601,1402,602,1383,1382,560,561,562,563,533,534,535] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2583,2589,2590,2586,3195,3201,3204,2584,2609,2601,2602,2605,3695,3696,3697,3607,3690,3691,3692,3595,3623,3624,3037,3183,3205,3725,1466,1467,1471,3698,3722,1470,2611,2927,2928,2769,2770,2785,2890,2891,2827,2894,2896,3163,2768,3178,3179,2753,2643,2642,2614,2625,2628,3711,2960,2961,2886,2887,2889,2858,2859,2860,2861,2888,2613,2623,2621,3231,3223,3222] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1523,1525,3600,4057,3245,3247,3249,3242,1498,1514,1497,4055,4088,4090,3284,4130,4093,4103,4104] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1791,1818,939,1775,1744,937,1290,3832,3834,3807,1790,3823] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        