
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
        
        load "data/7THY.pdb", protein
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
 
        load "data/7THY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [30,318,93,94,97,40,308,900,878,879,880,76,77,74,317,24,328,228,227,238,96,437,433,591,427,34,426,425,447,33,36,851,854,860,838,839,853,856,858,875,881,882,885,112,89,90,91,92,801,804,833,836,794,595,596,444,605,606,615,784,612] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [594,595,601,773,758,449,452,455,456,491,699,720,721,489,490,492,493,495,496,697,700,682,685,677,679,680,681,476,664,779,783,789,607,608,458,459,462,665,662,525,527,528,531,546,740,759,586,755,749,524,509,510,512,513,515,526,511,435,438,442,43,44,46,47,45,432] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [45,332,333,49,337,340,435,436,438,442,46,48,32,34,35,432,422,575,433,395,396,397,398,399,403,361,525,546,759,586,753,526,542,541,543,571,364,367,402,366,323,322] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        