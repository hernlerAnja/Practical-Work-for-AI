
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
        
        load "data/6G3C.pdb", protein
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
 
        load "data/6G3C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [134,128,1116,140,147,1117,1118,148,150,153,154,155,1402,1783,1401,190,353,354,355,129,131,191,370,173,174,476,742,744,132,780,781,1113,1129,1130,777,776,1114,1115,1103,1104,1125,1090,1091,1302,1415,1135,772,773,774,803,599,728,1141,1142,1136,1139,723,1289,1290,371,372,1294,1298,1306,1307,1301,1308,1310,745,751,748,755,1703,1705,1702,1704,1443,1445,1446,1439,1441,1444,1413] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [999,1001,2105,1034,1035,1037,2104,2102,2139,947,574,4114,929,949,4118,573,584,4142,978,977,1006,946,953,928,930,957,1240,4063,4091,4097,4095,4096,4110,4064,4065,4067,4074,4042,1008,565,3945,3970,4105,4098,4100,3948,3950,4102,3967,3968,3969,2082,2077,2111,2079,2140] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [2286,2289,2292,2339,3231,3232,3233,2279,2281,2283,2338,2501,2502,2503,2920,2280,2284,2858,2860,2856,3507,3508,2896,3230,3228,3240,2867,3254,2861,2864,2844,2851,3257,3543,3551,3550,3229,3219,2891,2889,2890,2892,2897,2919,3808,3809,3810,2295,2296,2298,2321,2322,2303,3485,2616,2618,3206,3241,3399,3403,3407,3411,3412,2520,3394,3395,2519,2839,3518,3519,3520,3205] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [4227,4228,4229,4226,558,559,550,554,555,556,4075,536,543,4043,566,567,570,4156,4159,4194,4191,4193,4050,4073,4040,4017,4071,4072,4160,4161,4137,606,607] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        