
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
        
        load "data/3NGA.pdb", protein
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
 
        load "data/3NGA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3175,3239,3181,3182,3185,3238,3240,3222,3755,3739,3751,4145,4144,3736,3734,3177,3344,3580,3742,4242,3720,4244,3342,3343,3224,3359,3360,3356,3358,3710,3716,3711,3713,3715,3758,3178,3174,3180,3183,3179,4245,4120,4121,4122,4246,4253,3186,3194,3195] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [373,378,379,380,381,439,437,438,939,941,950,954,957,1343,1344,543,376,377,374,935,938,934,1444,1319,1320,1321,953,1441,1445,557,558,559,423,1443,777,779,919,541,542,909,910,912,913,914,915,555,1452] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1288,1450,1287,1451,1452,1475,1476,1477,413,415,416,406,410,629,1468,1469,1470,1471,631,632,597,423,575,408,409,422,598,670,558,559,403,401,394,397,1328,1303,1304,1317,1318,1320] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [4251,4252,4253,3186,3195,3198,3203,3207,3213,3215,3211,4118,4119,4120,4121,4122,4129,3471,4269,4270,4271,4272,3435,4249,3224,3359,3376,4089,4277,4278,3204,4276,4104,4105,3206,3205] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [4153,3819,3821,4669,4642,3960] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        