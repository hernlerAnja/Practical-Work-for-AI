
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
        
        load "data/4M0Y.pdb", protein
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
 
        load "data/4M0Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1133,1135,1137,1158,1160,1162,1164,1141,342,289,290,617,634,636,1136,288,305,437,438,440,1193,407,526,413,446,447,529,383,384,385,416,552,387,391,550,566,378,5,21,1129,1130,1131,1132,1134,1138,1147,436,1144,1146,1148,461,509,521,522,1004,141,1030,1040,137,1200,148,150,151,152,138,1166,1181,1194,410,1172,1244,1245] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [130,133,170,126,169,171,114,115,116,117,118,693,1054,684,685,668,1035,1026,1040,137,148,511,1053,1055,273,630,631,640,654,656,657,660,661,662,1129,289,290,1136,287,288,633,1137] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [297,593,595,596,579,296,610,83,85,79,80,81,82,84,39,42,43,584,63,41,556,576,558,581,66,180,181] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1626,1515,1919,1921,1922,1923,1763,1482,1920,1485,1721,1723,1744,1753,1758] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        