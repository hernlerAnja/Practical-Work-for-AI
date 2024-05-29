
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
        
        load "data/4V0G.pdb", protein
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
 
        load "data/4V0G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2711,2824,2825,2453,2829,3265,3266,3341,3349,2327,2847,2850,2869,2872,2876,3235,2467,2468,2469,2486,2326,2328,2293,2297,2290,2312,2277,2315,2301,2270,2271,2272,2274,2275,2843,3213,3362,3363,3365,3370,3371,3342,3343,3346,3347,3348,2534,2564,2606,2567,3364,3372,2308,2535,2536] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [149,150,1088,101,666,97,98,99,102,104,534,647,652,276,670,673,1089,692,695,699,700,681,151,138,140,145,105,106,290,292,1171,1164,1165,1166,1169,1170,1173,1058,1072,648,430,291,1179] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2674,2678,2696,2679,2683,2684,2686,2666,1231,1269,1283,1298,1301,1257,1281,1295,1296,1292,3117,1290,1209,1328,1331,1316,1291,1288,1287,3116,3121,3124,3125,3126,3148,3149,3128,378,380,2697,3072,3096,3094,3093,1230,1233,3098,3041,3075,1247,3118,3115] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [116,359,128,130,124,358,391,392,397,291,357,309,290,292,1171,1170,1172,429,136,151,113,138,135,1193,1195,1194,1036,385,386,1185,1186,1187,387,390,355] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4285,410,4288,3683,4290,4297,3638,3640,3651,3652,3653,3650,408,409,3143,3641,3642,343,340,344,377,378,379,4306,342,367,371,3441,3141,3142,3144] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3537,3538,3852,3240,3238,3239,3761,3801,3839,3840,3803,3804,2892,2894] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [717,1059,1061,755,1626,715,1369,1370,1354,1675,1584,1662,1663] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1701,1870,1515,2003,2004,2002,1518,1821,2000,1859] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4085,4074,4215,4217,4218,4219,3692,3878,4036,3693,3695] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        