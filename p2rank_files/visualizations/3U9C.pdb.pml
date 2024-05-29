
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
        
        load "data/3U9C.pdb", protein
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
 
        load "data/3U9C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4098,4245,3188,3191,3195,3205,3206,3207,3209,3200,3204,4122,4235,4113,4082,4097,4243,4244,4246,4239,4240,4247,4261,4262,4264,4271,3464,3465,3390,3392,3427,3391,3424,4081,4396,4397,4272,4136,4138,4238,4237,3175,3179,3217,3233,3750,3337,3168,3232,3336,3231,3729,3732,3733,3573,3571,3572,3704,3705,3706,3707,3708,3709,3351,3352,3353,3369,3349,3368,3434,3703,3713,3423,3422,3751,3166,3167,4115,3173,3174,3172] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [1441,1443,1445,1315,1342,1343,1344,1444,1328,1446,1449,1450,1452,423,557,397,394,410,406,418,541,542,912,439,555,437,438,935,938,779,909,919,543,939,956,957,379,380,381,385,372,373,378,374,970,969,1319,1321,914,915,671,1453] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [1643,1913,1914,1916,1629,1631,1921,992,1317,1318,1319,1321,1304,1610] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        