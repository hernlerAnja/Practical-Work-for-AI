
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
        
        load "data/7UIR.pdb", protein
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
 
        load "data/7UIR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1090,1091,1174,1177,534,535,533,710,715,717,1062,1074,287,288,1178,1179,1182,430,460,127,128,132,157,691,274,688,694,116,117,122,170,169,171,286,668,669,670,671,123,707] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2616,2617,2741,2751,2770,2615,2764,2767,2782,2744,2746,2742,2743,2745,2747,2392,3229,3230,3231,3234,3243,3245,3138,3166,3167,2783,2786,2516,3150,2244,2249,2250,2252,2253,2793,2238,2291,2791,2277,2405,2406,2404,2239,2290,2241,2402] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [133,136,157,140,145,148,1074,1183,1184,287,288,1182,1185,1198,429,337,364,394,395,396,401,403,397,398,338,1062,156,304,302,303,4313,1050,1034,1051,4317,1206,1207,1208,4302,4309] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3175,2828,2829,3174,2949,2801,2830,2892,2893,2859,2975,3206,3196,3191,3192,3195,2938,2941,2916,2919,2920,2921,2922] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1487,1489,967,2015,2018,2019,2021,2025,2030,1460,1461,1455,1466,1255,1457,943,965,1459,2008,2009,2020,1465] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3767,3453,3764,3777,3806,3737,3739,3740,1800,1803,1804,1805,4209,4210] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3127,4429,3110,4433,4437,3257,3258,3259,3126,3139,2253,2793,3229,3234,3235,3138,3167,3236,3150,2256] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [318,319,373,374,375,376,377,378,593,629,410,412,627,597,370,372] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2276,2405,2406,2420,2422,2490,2485,3257,3258,3259,2483,2515,3249,3235,3236,3251,3250,2261,2265,2268,2260] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        