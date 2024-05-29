
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
        
        load "data/7APF.pdb", protein
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
 
        load "data/7APF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3541,3542,3545,3546,3547,3548,3549,2475,2482,2483,3555,2662,2799,2800,3561,3563,3569,3553,3571,2494,2498,2501,2503,2755,2756,2757,2760,2728,2725,2729,2732,3409,3411,3412,3449,3731,3732,3405,3570,3714,3701,3704,2660,3012,3013,2661,2521,2505,2506,2507,2508,2509,2510,2767,2761,2762,2765,2679,2727,3038,3057,3060,3464,3465,3540,2904,2463,2464,2469,2470,2471,2473,3068,3445,3434,3443,3446,3070,3438,2646,3017,3031,3035,2520,2465,2467,2468,3046,3056] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1523,1524,1493,1494,1496,1497,1500,1501,1503,1933,1532,1548,3055,1531,2179,2169,2170,1582,3476,3483,3486,3481,3146,3496,1967,3179,2152,2154,2155,3180,1954,1929,3053,3107,3147,3133,3135,3493,3488,1547,1352,1343,1344,1564,1565,1353,1355,1357] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [326,464,1251,1252,1253,1254,1151,1246,1247,1248,1255,771,774,782,1170,1171,184,131,745,310,752,324,726,727,784,812,128,134,325,183,185,132,129,502,574,575,731,749,503,1149,1140] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [393,391,325,150,158,162,165,169,172,147,137,146,134,139,343,170,171,185,419,421,326,420,463,464,1267,1269,1251,1252,1253,1254,1247,1248,324,727,1276,1277,1144,1437,1118,1152,1155,1275] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [1615,1618,2006,2007,2008,2139,2140,2141,2142,1767,1791,1792,1795,1453,1924,1925,1983,1827,1828,1958,1984,1947,1949,1991,1992,2001,1450,1768,1648] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [3744,3909,3912,4252,3769,3742,3745,3747,4219,4218,4251,4290,4243,4295,4300,4301,4435,4434,4302,4121,4122,4061,4085,4086,4089,3942] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1724,1759,1762,1770,1763,1725,1726,1732,1742,1469,1470,1771,1775,1776,1681,1709,1727,800,802,840,1145,1143,1684] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4053,4056,4057,4070,3764,4065,4069,3975,3978,4064,3763,3086,3088,3437,3439,3126,4020,4036,4021,4018,4019] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1289,1291,1369,1375,1384,1287,1370,1273,1380,1383,1386,1111,1277,2606,423,424,452,453,1281,384,386] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [3864,3343,3344,3345,3346,3866,3867,3868,4519,3314,4516,4528,4507,4510,4512,4523] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [3739,3725,3773,3775,3703,3705,3706,3834,3802,3806,3808,4193,4194,3812] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        