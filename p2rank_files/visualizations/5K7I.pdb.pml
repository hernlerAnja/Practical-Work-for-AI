
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
        
        load "data/5K7I.pdb", protein
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
 
        load "data/5K7I.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2422,2458,2459,2414,2416,2417,2424,2425,2880,2881,2882,2871,2873,2875,2877,3373,3374,2558,2560,2545,3295,2851,2852,2853,2854,2855,2856,3380,2438,2861,2557,2445,2908,2909,3271,3296,2904,2901,3272,3260,3261,3371,3372,3279,2674,2930,2933,2972,2413,2900,2942,2888,2980,2419,2369] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [242,290,291,292,378,238,239,241,244,245,243,675,676,677,678,679,680,674,256,257,247,249,1204,1198,393,697,704,695,699,685,701,1095,706,1119,1120,1195,1196,1103,1197,585,705,728,732,733,757,724,725,712] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [3746,3747,3800,1612,3799,4026,3739,1616,3808,3987,3989,3991,3976,3754,3774,1597,1613,1615,1617,1598] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1848,1849,778,1563,1850,780,781,782,4024,4025,4026,3739,3747,2956] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        