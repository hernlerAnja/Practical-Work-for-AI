
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
        
        load "data/7SHV.pdb", protein
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
 
        load "data/7SHV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2604,3166,3168,3245,3248,3249,3252,3253,3254,3255,2342,2260,2354,2356,2748,2603,2742,3164,2764,2767,2769,2773,2774,3138,3142,3165,3167,3169,2219,2223,3149,2747,2762,2210,2259,2206,2207,2213,2741,2600,2601,2602,2724,2525,2499,2524,2705,2720] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [651,117,120,169,168,170,123,630,650,652,251,252,629,612,264,615,1081,514,1083,1160,1078,1080,1082,1084,1163,267,268,1164,1168,1169,1170,435,511,434,409,679,684,1049,1050,129,675,676,674,677,658,659,657,672,654] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2573,2575,2578,2579,2580,2587,3219,230,2993,222,2996,643,1101,1102,1111,236,644,646,233,237,238,240,1150,637,638,1132,1134,1149,1133,639,1100,1108,2612,3235,522,477,541,640,2972,2973,2974,2975,3218,1107,3209,3211,1124,1126,3193,3185,3187] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [2327,2330,2756,2758,2294,2328,850,851,852,1124,3194,3195,3196,2733,3186,2755,2757,482,488,489,497,884,1123,498,883,885,490,2326,1133,1122,903,906,2323,874] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2528,2529,2530,2534,2105,2107,439,2110,440,17,20,443,444] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        