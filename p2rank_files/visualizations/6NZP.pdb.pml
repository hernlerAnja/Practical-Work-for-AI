
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
        
        load "data/6NZP.pdb", protein
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
 
        load "data/6NZP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3072,3208,3209,3213,3050,3037,3036,3358,2299,2316,2317,2657,2662,2199,2183,2150,2157,2160,2197,2198,3360,3318,3217,3225,3221,3226,3229,3232,3329,2165,2163,2164,3327,3063,3059,3060,3061,2732,3605,3602,3603,3359,2141,2139,2142,2220,2715,2138,2770,3058,3089,2716,2683,2684,2698,2706,2707,2300,2680,3088,2677,2699] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [187,189,299,173,140,147,155,150,154,1299,1306,1310,1634,131,188,129,1038,1037,134,135,1577,1580,1343,1579,1190,1194,1035,1066,1032,1014,1036,1049,1206,1207,1210,1213,639,281,283,634,301,1198,1065,1027,1026,1341,1342,1013,1312,746,747,709,1040,1549,1556,655,692,693,128,657,661,660,684,1511,1560] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [3109,3110,3111,3101,3107,3108,3122,3114,1088,2704,2705,1085,1086,3118,3120,1153,1154,1156,3129,3138,3154,1078] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        