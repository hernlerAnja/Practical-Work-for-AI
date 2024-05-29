
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
        
        load "data/Q8NE63.pdb", protein
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
 
        load "data/Q8NE63.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1312,1286,1287,1289,1291,1293,1294,1153,1141,1168,1285,779,1169,3823,3825,3821,805,579,734,726,288,751,747,435,1301,578,727,729,1104,1442,1110,1111,1112,1128,1129,1314,1444,1451,1452,1456,3964,1140,1142,1144,795,3791,807,806,3798,3800,162,303,304,305,306,301,728,140,186,189,129,131,135,136,137,139,188,298,130,158,166,168,169,149,152,141,148,3790,3802,3993,3976,1437,1440,1426,1435,4018,3988,3959,3962,3969,3974,1446,3948,3949,3983] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [3016,3121,3122,2986,3187,3192,3194,3188,3193,3195,3196,3198,2825,2841,3014,2829,3181,3171,3172,3177,3170,3183,3184,3186,3173,2956,2832,2874,973] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [1706,2578,2579,1707,2391,2438,2545,2547,904,901,1705,882,2413,890,895,899,2414] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [3048,3049,973,974,1005,3195,3196,3198,564] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [3944,3947,3949,3932,1144,799,1475,1477,1490,1739,1688,798,3933] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [538,539,540,738,590,1182,1183,1188,1192,1219,3074,743,733,1254,3064,3054,1225,3066,3069] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4046,1325,1575,1576,1441] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        