
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
        
        load "data/4RWJ.pdb", protein
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
 
        load "data/4RWJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [213,214,215,270,271,245,246,247,248,250,216,218,217,794,778,406,792,656,1322,1399,1400,774,758,773,581,657,547,1408,1417,1419,418,757,1407,420,220,855,222,240,827,854,219,799,803,804,816,817,820,1323] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2921,3029,3031,3152,2612,2613,2614,2615,2616,3655,3575,2618,3576,2788,2790,2637,2639,2589,2638,2776,2585,2586,2587,2590,3645,3650,3649,3654,3648,3173,3177,3191,2591,2592,3190,3194,3201,2601,2602,2604,2608,3178,2954,2955,3147,3148,3668,3666] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1045,1049,2047,2048,2049,956,1056,1089,1055,2371,2372,3850,1061,1065,1060,3849,3782,3783,4360,4361,3848,4363,4364,4367,943,946,3830,3831] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3971,3547,3214,3200,3756,3755,3551,3712,3549,3700,4015,4018,4026,4013,4019,3251,3252,4008,4009,3704,3707,3708,3709] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1256,1268,1269,1271,1689,1606,1668,1487,1488,1490,1667,1307,1270,1406,1429,1260,1441,1447,1451,1687,1466,1259,1566,1567,1565,1539,1297] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1842,1839,1844,1807,1841,909,959,1858,884,963,964,1866,1861,1890] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2232,2243,1737,1204,1702,1703,1203,1705,1172,1174,1176,2229,2231,2247] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3899,3902,4128,4037,4170,4327,4328,4329,4330,4331,4332,3932,4035,4182,4179,4180,4175] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [12,18,19,22,4,1,2,3,44,42,24,727,730,733,437,500,503,442,435,461,462] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2317,2289,2290,2291,2292,2076,2107,2074,2079,2108,2109,2112,2142,2115,2139,2223,2222,2104] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        